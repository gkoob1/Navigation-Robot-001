// dsPIC30F6015 MICROCONTROLLER.    
// Configure Fuses.
// NAME: koob_graham
// DATE: 2011-02-07
//***********************************************************************
//* Documentation:	dsPIC30F FRM Section 24
//***********************************************************************

// Oscillator Configuration Register (FOSC):

	// Clock Switching and Monitor Selection Configuration bits:
#pragma	config	FCKSM	=	2
	
		// 1x	= Clock switching disabled, Fail-Safe Clock Monitor		
		//		  disabled
		// 01	= Clock switching enabled, Fail-Safe Clock Monitor 
		//		  disabled
		// 00	= Clock switching enabled, Fail-Safe Clock Monitor 
		//		  enabled

	// Oscillator Group Selection on POR bit:
#pragma	config	FOS		=	fos_pll_osc

		// 111	= FOS_PLL_OSC:	PLL source selected by FPR<4:0> bits
		// 010	= FOS_LPRC:		Internal Low-power RC
		// 001	= FOS_FRC:		Internal Fast RC

	// Oscillator Selection within Primary Group bits:
#pragma	config	FPR		=	fpr_frc

		// 010	= FPR_LPRC: Internal Low-power RC
		// 001	= FPR_FRC:	Internal Fast RC


// Watchdog Timer Configuration Register (FWDT):

	// Watchdog Enable Configuration Bit:
#pragma	config	FWDTEN	=	disabled	// Watchdog Timer Disabled

	// Prescale Value Selection for Watchdog Timer Prescaler A Bits:
#pragma	config	FWPSA	=	0			// Prescale = 1:1

	// Prescale Value Selection for Watchdog Timer Prescaler B Bits:
#pragma	config	FWPSB	=	0			// Prescale = 1:1


// BOR & POR Configuration Register (FBORPOR):

	// /MCLR Pin Function Enable BIT:
#pragma	config	MCLREN	=	enabled		// Pin function is /MCLR 

	// Motor Control PWM Module Pin Mode Bit:
#pragma	config	PWMPIN	=	1			// Pin state @ reset controlled 
										// by I/O Port 
										// (PWMCON1<7:0> = 0x00)

	// Motor Control PWM Module High Side Polarity Bit:
#pragma	config	HPOL	=	high		// Active HIGH polarity

	// Motor Control PWM Module Low Side Polarity Bit:
#pragma	config	LPOL	=	high		// Active HIGH polarity

	// PBOR Enable Bit:
#pragma	config	BOREN	=	disabled	// PBOR Disabled

	// Brown-out Voltage Select Bits:
#pragma	config	BORV	=	0			// Brown-out V = 4.5V

	// Power-on Reset Timer Value Selection Bits:
#pragma	config	FPWRT	=	disabled	// PWRT disabled


// General Code Segment Configuration Register (FGS):

	// General Code Segment Code-Protect Bit:
#pragma	config	GCP		=	1			// User program memory is not protected

	// General Code Segment Write-Protect Bit:
#pragma	config	GWRP	=	1			// User program is not write-protected

