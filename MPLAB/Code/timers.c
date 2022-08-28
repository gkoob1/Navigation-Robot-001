// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// Timers
// NAME: koob_graham
// DATE: 2011-02-24
//***********************************************************************

//***********************************************************************
// timer1_init()
//	Configures timer1
//
//	See FRM - 12
//
//***********************************************************************

//***********************************************************************
// timer2_init()
//	Configures timer2
//
//	See FRM - 12
//
//	Type B timer
//
//	16b
//
//	Max Pulses
//
//		16b = 65535
//
//		32b = 4294967295
//
//	Prescale = 1	// Most accurate for 1ms, 10ms
//
//	Prescale	TOUT		Pulses/1ms	Pulses/10ms	
//	1:1			135.7ns		7370		73700			
//	1:8			1.1us		921			9213
//	1:64		8.7us		115			1152
//	1:256		34.7us		29			288
//***********************************************************************

void	timer2_init(void)
{
	ConfigIntTimer2(	T2_INT_PRIOR_6	&		// Interrupt priority
						T2_INT_ON		);		// Interrupt ON


	OpenTimer2(	T2_ON			&				// TMR2 ON
				T2_IDLE_STOP	&				// Stop when idle
				T2_GATE_OFF		&				// Don't understand
				T2_PS_1_1		&				// Prescaler = 1:1
				T2_SOURCE_INT	,				// Internal Source
				t2_1ms			);				// period

	return;
}

//***********************************************************************
// vim: set foldmethod=indent:
