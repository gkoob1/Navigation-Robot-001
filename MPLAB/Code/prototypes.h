// dsPIC30F6015 MICROCONTROLLER.    
// Prototypes.
// NAME: koob_graham
// DATE: 2011-02-11
//***********************************************************************

// Init
void		port_init(void);
// Initializes ports on reset

// Interrupts
//void __attribute__((__interrupt__)) _T2Interrupt(void);
void _ISRFAST _T2Interrupt(void);
// TIMER2 Interrupt

//void __attribute__((__interrupt__)) _T2Interrupt(void);
void _ISRFAST _QEIInterrupt(void);
// QEI Interrupt

// Timers
void		timer2_init(void);				
// Initialize timer2

// RS-232
void		rs232_init(void);
// Initializes RS232 

void		rs232_motor_speed(unsigned int speed[]);
// Send commands to motor

// SPI
void		spi_init(void);
// Initializes SPI 

void		spi_lisy300_init(void);
// Initializes LISY300

unsigned	spi_lisy300(void);
// Communicate with LISY300

unsigned	spi_lisy300_convert(unsigned raw);
// Convert value received from LISY300 to a voltage

int			spi_lisy300_degree(int	raw);
// Converts voltage to a degree

int			spi_lisy300_delta(unsigned	raw);
// Converts voltage to DELTA voltage to determine rotation

void		spi_lisy300_loop(void);
// Loop for LISY300

void	spi_microsd_init(void);
// Initializes MicroSD card

// QEI
void		qei_init(void);
// Initializes QEI

// I2C
void		i2c_init(void);
// Initializes I2C

void		i2c_srf02_init(void);
// Initializes SRF02

void		i2c_srf02_ping(void);
// Sends SRF02 command to start ranging

void		i2c_srf02_range(void);
//void	i2c_srf02_range(unsigned int *value);
//unsigned int	i2c_srf02_range(void);
// Gets range from SRF02, returns as unsigned int

void		i2c_srf02_autotune(unsigned int *value);
//unsigned int	i2c_srf02_autotune(void);
// Gets autotune from SRF02, returns as unsigned int

void		i2c_delay(void);
// Delay for I2C

void		i2c_srf02_change_address(void);
// Changes the address of a SRF02 to 0xE2

void		i2c_srf02_loop(void);
// Loop for SRF02

// Interface
int			manual_control(int control);

	// LCD
void		lcd_init(void);
// Initializes LCD

void		lcd_init_reset(void);
// Resets LCD

void		lcd_message_default(void);
// Message when robot is not moving

void		lcd_message_moving(void);
// Message when robot is moving

void		lcd_message_moving_test_a(void);
// Message when testing navigation

void		lcd_message_moving_test_b(void);
// Message when testing navigation

void		lcd_message_complete(void);
// Message when robot is done mapping

void		lcd_message(int screen, int position);

// PWM
void		pwm_init(void);
// Initializes PWM

void		pwm1l_dc(unsigned int duty_cycle);
// Set PWM Duty Cycle

// Movement
void	move(unsigned int speed[], int lisy300_delta, int direction, 
			 unsigned int range[]);
// Basic navigation logic

void		move_forward(void);
// Moves robot forward

void		move_reverse(void);
// Moves robot reverse

void		move_stop(void);
// Stops motors

void		move_left(int angle);
// Turns robot left

void		move_right(int angle);
// Turns robot right

void		move_obstacle_front(void);
//	movement if there is an obstacle in front

void		move_obstacle_right(void);
//	movement if there is an obstacle to right

void		move_obstacle_left(void);
//	movement if there is an obstacle to left 

void		move_obstacle_avoidance(void);
//	

void		move_obstacle(void);
//

//***********************************************************************
// vim: set foldmethod=manual:
