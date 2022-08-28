// dsPIC30F6015 MICROCONTROLLER.  
// Main code.
// NAME: koob_graham
// DATE: 2011-02-07
//***********************************************************************

//***********************************************************************
// Header Files (Remote)
//***********************************************************************
#include	<stdio.h>			// Standard I/O
#include	<stdlib.h>
#include	<p30f6015.h>		// Micro specific header
#include	<uart.h>			// Serial 
//#include	<EEP.h>				// EEPROM
#include	<libpic30.h>
#include	<timer.h>			// Timers 
//#include	<ctype.h>			// Determine character type
#include	<spi.h>				// SPI
#include	<pwm.h>				// PWM 
#include	<qei.h>				// QEI 
#include	<i2c.h>				// I2C 
//***********************************************************************
// Header Files (Local)
//***********************************************************************
//#include	"config.h"			// Configure fuses
#include	"define_hw.h"		// Defines for Hardware locations
#include	"define_math.h"		// Defines for mathematical values
#include	"prototypes.h"		// Function Prototypes
#include	"g_xlcd.h"			// Modified header for XLCD
//#include	"eeprom.h"			// EEPROM 
//***********************************************************************

//***********************************************************************
// Configuration Bits
//***********************************************************************
_FOSC(CSW_FSCM_OFF & FRC_PLL4);	// Fail-Safe Clock Monitor OFF,
								// FCY = FRC * PLL(4) / 4 = FRC = 7.37MHz
_FWDT(WDT_OFF);					// Watch Dog Timer OFF
_FBORPOR(PBOR_OFF & MCLR_EN);	// Power On Reset OFF, MCLR enabled
_FICD( ICS_PGD );				// Programming on PGD
//***********************************************************************

//***********************************************************************
// Global variables
//***********************************************************************

// QEI, used in _QEIInterrupt()
int				qei_count;			// For QEI, number of rev completed 
									// in current direction
int				qei_count_old;		// For QEI, number of rev completed 

// Timer2, used in _T2Interrupt()
unsigned int	t2_time,			// Time in ms
				debounce_time,		// For keypad debounce, time in ms,
				lisy300_time,		// For LISY300, time in ms, reset 
									// every 12ms
				servo_time,			// For Servo, time in ms, reset 
									// every 22ms
				srf02_time,			// For SRF02, time in ms, reset 
									// every 72ms
				message_time,		// For LCD, time in ms, reset every
									// 500ms
				drive_time,			// For move_stop(), time in ms, 
									// reset after 300ms
				global_movement_time;	// For global_movement_old, time 
									// in ms, reset after 1s

// Navigation values to be written to navigation[]
int				global_lisy300_degree_turn = 0,
				global_lisy300_degree_goal = 0,
				global_lisy300_direction = 0;

unsigned int	global_srf02_range[3] = {60,60},
				global_srf02_autotune[3];

// Navigation log, written to by move_stop()
struct			navigation_struct
{
	int				direction;			// Direction in relation to 
										// starting point
	int				degree_turn;		// number of DEG change
										// since last log
	int				distance,			// Distance traveled in direction
					distance_x,			// Distance traveled in X
					distance_y;			// Distance traveled in Y
	//unsigned int	range[3];			// Ultrasonic range
	//unsigned int	autotune[3];		// Ultrasonic autotune
};
struct			navigation_struct	navigation[550];

int				global_nav_log,		// Location for next log
				global_movement,	// Desired motion type
				global_movement_old,
				global_movement_x[100],
				global_movement_y[100],
				global_movement_z,
				global_movement_zz,
				global_wall_min = 150,	// Minimum distance from the 
										// right wall for a correction
										// to the right
				global_wall_dist[3];

//enum	def_map_room	{no_map, mapping, mapped, error};
enum	def_lcd_screen	{home_screen,
						 map_room_screen,
						 options_screen,
						 sensors_screen,
						 gyroscope_screen,
						 encoder_screen,
						 ultrasonic_screen,
						 settings_screen,
						 mapping_incomplete_screen,
						 mapping_complete_screen,
						 error_screen};
enum	def_lcd_item	{item_0,
						 item_1,
						 item_2,
						 item_3,
						 item_4,
						 item_5,
						 item_6,
						 item_7,
						 item_8,
						 item_9};


//***********************************************************************
// main()
//***********************************************************************

int   main(void)
{
//	enum		def_map_room	map_room;
	enum		def_lcd_screen	lcd_screen;
	int			lcd_position,
				lcd_position_old,
				lcd_position_max,
				key_value;

	int			map_room;
	//unsigned int	srf02_range[3] = {40,40};

	//unsigned int	speed[3] = {0,0};	// Speed for motors, [0] = left
										//					 [1] = right

// INIT
	port_init();				// Initialize ports

	rs232_init();				// Initialize serial

	spi_init();					// Initialize SPI
	//spi_lisy300_init();			// Initialize LISY300
	spi_microsd_init();			// Initialize MicroSD card

	//qei_init();					// Initialize Quadrature Motor Encoder

	i2c_init();					// Initialize I2C
	i2c_srf02_init();			// Initialize SRF02

	timer2_init();				// Initialize timer2

	//pwm_init();					// Initialize PWM 

	//lcd_init();					// Initialize LCD

	while(forever)
	{
		/* NOT USED
		switch(map_room)
		{
			// Default screen for startup/reset
			case no_map:
				{
					move_stop();

					lcd_position_max = 2
					if(lcd_position != lcd_position_old)
					{
						lcd_screen = home_screen;
						lcd_message(lcd_screen,lcd_position);
					}

					lcd_position_old = lcd_position;

					key_value = manual_control(key_value);
					lcd_scroll(key_value,lcd_position,lcd_position_max);

				}
				break;
			// Mapping room
			case mapping:
				{
					lcd_position_max = 2
					if(lcd_position != lcd_position_old)
					{
						lcd_screen = map_room_screen;
						lcd_message(lcd_screen,lcd_position);
					}
				}
				break;
			// Room mapped
			case mapped:
				{
				}
				break;
			// Error
			case error:
				{
					move_stop();
				}
				break;
			// Error
			default:
				{
					move_stop();
				}
		}
		*/

		lcd_message_default(); 
		// Not Mapping
		while((map_room == 0) || (map_room == 1))
		{
			global_movement_z = 0;
			//lcd_message_default(); 

			// Press UP to start
			map_room = manual_control(map_room);

			move_stop();

			global_srf02_range[0] = 60;
			global_srf02_range[1] = 60;
		}

		// Mapping
		while(map_room == 2)
		{
			// Display distance travelled on LCD
			//lcd_message_moving_test_a(); 
			lcd_message_moving_test_b(); 
			//lcd_message_moving(); 

			// For LISY300 Gyroscope
			spi_lisy300_loop();

			// For SRF02 Ultrasonic
			i2c_srf02_loop();

			// Obstacle avoidance
			move_obstacle();
			//move_obstacle_avoidance();

			// Press BACK to stop
			map_room = manual_control(map_room);
		}
	}

	return(0);
}

//***********************************************************************
// _T2Interrupt()
//	Timer 2 Interrupt
//
//***********************************************************************

//void __attribute__((__interrupt__)) _T2Interrupt(void)
void _ISRFAST _T2Interrupt(void)
{
	t2_time++;					// Increment t2_time every ms

	if(debounce_time > 0)		// Timer for keypad debounce
	{
		debounce_time--;
	}

	lisy300_time++;				// Get orientation value from LISY300 
								// every 12ms

	/*
	if(servo_time <=60000)		// TEST
	{
		servo_time++;
	}
	*/

	srf02_time++;				// Get range from SRF02 every 70ms

	message_time++;				// Send message to LCD every 1s

	drive_time++;				// Let robot stop

	global_movement_time--;		//

	IFS0bits.T2IF = clear;		// Clear flag
}

//***********************************************************************
// _QEIInterrupt()
//	QEI Interrupt
//
//***********************************************************************

//void __attribute__((__interrupt__)) _QEIInterrupt(void)
void _ISRFAST _QEIInterrupt(void)
{
	// Increment qei_count every complete forward rotation
	if(POSCNT == 0)
	{
		qei_count++;							// Increment qei_count
	}
	// Decrement qei_count every complete reverse rotation
	else
	{
		qei_count--;
	}

	IFS2bits.QEIIF = clear;						// Clear flag
}

//***********************************************************************
#include	"port_init.c"
#include	"timers.c"
#include	"rs232.c"
#include	"i2c.c"
#include	"spi.c"
#include	"pwm.c"
#include	"qei.c"
#include	"interface.c"
#include	"lcd.c"
//#include	"sensors.c"
#include	"move.c"

// XLCD
#include	"g_BusyXLCD.c"
#include	"g_OpenXLCD.c"
#include	"g_PutsXLCD.c"
#include	"g_ReadAddrXLCD.c"
#include	"g_ReadDataXLCD.c"
#include	"g_setCGRamAddr.c"
#include	"g_setDDRamAddr.c"
#include	"g_WriteCmdXLCD.c"
#include	"g_WriteDataXLCD.c"
#include	"g_delay.c"

//***********************************************************************
// vim: set foldmethod=syntax:
