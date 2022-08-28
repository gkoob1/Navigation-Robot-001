// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// PWM
// NAME: koob_graham
// DATE: 2011-02-23 
//***********************************************************************

//***********************************************************************
// pwm_init()
//	Configures PWM
//
//	See FRM - 15
//
//***********************************************************************

void	pwm_init(void)
{
	OpenMCPWM(	pwm_servo_period	,
				0					,
				PWM_EN				&
				PWM_IDLE_STOP		&
				PWM_OP_SCALE1		&
				PWM_IPCLK_SCALE16	&
				PWM_MOD_FREE		,
				PWM_MOD1_IND		&
				PWM_PDIS4H			&
				PWM_PDIS3H			&
				PWM_PDIS2H			&
				PWM_PEN1H			&
				PWM_PDIS4L			&
				PWM_PDIS3L			&
				PWM_PDIS2L			&
				PWM_PEN1L			&
				PWM_PDIS1L			,
				PWM_SEVOPS1			&
				PWM_OSYNC_PWM		&
				PWM_UEN				);

	SetDCMCPWM(	1					,	// Duty Cycle register
				pwm_servo_center	,	// Duty Cycle
				0					);	// Updates are enabled
				
	return;
}

//***********************************************************************
// pwm1l_dc(duty_cycle)
//	Configures PWM
//
//	See FRM - 15
//
//***********************************************************************

void	pwm1l_dc(unsigned int duty_cycle)
{
	SetDCMCPWM(	1					,	// Duty Cycle register
				duty_cycle			,	// Duty Cycle
				0					);	// Updates are enabled
				
	return;
}
