// dsPIC30F6015 MICROCONTROLLER.    
// Hardware Definitions.
// NAME: koob_graham
// DATE: 2011-02-07
//***********************************************************************

// TESTING

// OSC
#define	fcy					7370000		// 7.37MHz

	// xFOSC choices
#define fos_frc				1	// 001	= FRC:	Internal Fast RC
#define fos_lprc			2	// 010	= LPRC: Internal Low-power RC
#define fos_pll_osc			7	// 111	= PLL OSC; PLL source selected 
								//		  by FPR<4:0> bits

#define fpr_frc				1	// 001	= FRC:	Internal Fast RC
#define fpr_lprc			2	// 010	= LPRC: Internal Low-power RC

	// OSCCON Choices
#define	postscaler_1		0	// Postscaler doesn't alter clock
#define	postscaler_4		1	// Postscaler divides clock by 4
#define	postscaler_16		2	// Postscaler divides clock by 16
#define	postscaler_64		3	// Postscaler divides clock by 64

#define	frc					1	// Internal FRC OSC
#define	lprc				2	// Internal LPRC OSC

// RS232
#define	uart1_baud			19200	// BAUD = 19200
#define baud1				23		// BAUD = 19200
#define baud2				23		// BAUD = 19200

// Keypad
#define sw_back				PORTDbits.RD3	// SW6, Active Low PB 
#define	sw_up				PORTDbits.RD2	// SW7, Active Low PB 
#define	sw_down				PORTDbits.RD1	// SW8, Active Low PB 
#define	sw_enter			PORTDbits.RD0	// SW9, Active Low PB 

#define sw6					PORTDbits.RD3	// BACK, Active Low PB 
#define	sw7					PORTDbits.RD2	// UP, Active Low PB 
#define	sw8					PORTDbits.RD1	// DOWN, Active Low PB 
#define	sw9					PORTDbits.RD0	// ENTER, Active Low PB 

// LCD
#define	lcd_rs				PORTBbits.RB14
#define	lcd_rw				PORTBbits.RB13
#define	lcd_cs				PORTBbits.RB12

#define	lcd_db4				PORTBbits.RB11
#define	lcd_db5				PORTBbits.RB10
#define	lcd_db6				PORTBbits.RB9
#define	lcd_db7				PORTBbits.RB8

// SPI
#define	spi_cs3				PORTEbits.RE5	// Chip select 3, Active low
#define	spi_cs2				PORTEbits.RE6	// Chip select 2, Active low
#define	spi_cs1				PORTEbits.RE7	// Chip select 1, Active low
#define	spi_cs0				PORTBbits.RB2	// Chip select 0, Active low

#define	spi_cs_lisy300		PORTEbits.RE7	// Chip select 1, Active low
#define	spi_cs_microsd		PORTBbits.RB2	// Chip select 0, Active low

//#define lisy300_cal			165			// Calibration value for
#define lisy300_cal			1650			// Calibration value for
											// LISY300

// I2C
#define	i2c_fscl_100khz		66		// FSCL = 100KHz when FCY = 7.37MHz

// Sensors

	// Whiskers
#define wkr_fl				PORTDbits.RD7	// Front Left whisker
											// Active Low tactile sensor 
#define wkr_fr				PORTDbits.RD4	// Front Right whisker
											// Active Low tactile sensor 
#define wkr_bl				PORTDbits.RD6	// Back Left whisker
											// Active Low tactile sensor 
#define wkr_br				PORTDbits.RD5	// Back Right whisker
											// Active Low tactile sensor 

#define sw2					PORTDbits.RD7	// Front Left whisker
											// Active Low tactile sensor 
#define	sw3					PORTDbits.RD4	// Front Left whisker
											// Active Low tactile sensor 
#define	sw4					PORTDbits.RD6	// Front Left whisker
											// Active Low tactile sensor
#define	sw5					PORTDbits.RD5	// Front Left whisker
											// Active Low tactile sensor 

	// Encoder

	// Ultrasonic
#define	srf_front			0		// Array location for front range
#define srf_right			1		// Array location for right range

#define	srf02_01_address_w	0xE0	// Address of SRF02 for I2C (Write)
#define	srf02_01_address_r	0xE1	// Address of SRF02 for I2C (Read)

#define	srf02_02_address_w	0xE2	// Address of SRF02 for I2C (Write)
#define	srf02_02_address_r	0xE3	// Address of SRF02 for I2C (Read)

#define	srf02f_address_w	0xE0	// Address of SRF02 for I2C (Write)
#define	srf02f_address_r	0xE1	// Address of SRF02 for I2C (Read)

#define	srf02r_address_w	0xE2	// Address of SRF02 for I2C (Write)
#define	srf02r_address_r	0xE3	// Address of SRF02 for I2C (Read)

#define	srf02_front_w		0xE0	// Address of SRF02 for I2C (Write)
#define	srf02_front_r		0xE1	// Address of SRF02 for I2C (Read)

#define	srf02_right_w		0xE2	// Address of SRF02 for I2C (Write)
#define	srf02_right_r		0xE3	// Address of SRF02 for I2C (Read)

#define	srf02_cmd			0x00	// Register to send commands
#define	srf02_range_h		0x02	// Register for range high byte
#define	srf02_range_l		0x03	// Register for range low byte
#define	srf02_autotune_h	0x04	// Register for autotune high byte
#define	srf02_autotune_l	0x05	// Register for autotune low byte

#define srf02_rrm_in		0x50	// Real range in inches
#define srf02_rrm_cm		0x51	// Real range in cm
#define srf02_rrm_us		0x52	// Real range in us

#define srf02_frm_in		0x56	// Fake range in inches
#define srf02_frm_cm		0x57	// Fake range in cm
#define srf02_frm_us		0x58	// Fake range in us

#define srf02_burst			0x5C	// Transmit 8 cycle 40kHz burst (doesn't range)

#define srf02_autotune		0x60	// Force Autotue restart - same as power-up

#define srf02_change_addr_1	0xA0	// 1st in sequence to change I2C address
#define srf02_change_addr_2	0xAA	// 2nd in sequence to change I2C address (may be 3rd)
#define srf02_change_addr_3	0xA5	// 3rd in sequence to change I2C address (may be 2nd)

	// Gyroscope

// Motors

	// Drive 
#define	left				1				// Left motor for speed[]
#define	right				0				// Right motor for speed[]

#define	drv_all_stop		0				// Stops both motors

#define	drv1_full_reverse	1				// Drive motor 1 reverse 
#define	drv1_reverse		32				// Drive motor 1 reverse 
#define	drv1_stop			64				// Drive motor 1 stop
#define	drv1_forward		96				// Drive motor 1 forward
#define	drv1_full_forward	127				// Drive motor 1 forward

#define	drv2_full_reverse	128				// Drive motor 2 reverse 
#define	drv2_reverse		160				// Drive motor 2 reverse 
#define	drv2_stop			192				// Drive motor 2 stop
#define	drv2_forward		221				// Drive motor 2 forward
//#define	drv2_forward		224				// Drive motor 2 forward
#define	drv2_full_forward	255				// Drive motor 2 forward

	// Servo
#define pwm_servo_period	0x270A			// FPWM = 46Hz, TPWM = 21.7ms
#define pwm_servo_center	0x0564			// 1.5ms (center)
#define pwm_servo_cw		0x04AC			// 1.3ms (CW)
#define pwm_servo_ccw		0x061C			// 1.7ms (CCW)

#define pwm_servo_1500us	0x0564			// 1.5ms (center)
#define pwm_servo_1300us	0x04AC			// 1.3ms (CW)
#define pwm_servo_1700us	0x061E			// 1.7ms (CCW)

//***********************************************************************
// vim: set foldmethod=manual:
