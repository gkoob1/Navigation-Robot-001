// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// I2C
// NAME: koob_graham
// DATE: 2011-03-02 
//***********************************************************************

//***********************************************************************
// i2c_init()
//	Configures I2C
//
//***********************************************************************

void	i2c_init(void)
{
	OpenI2C(I2C_ON				&			// I2C Enable
			I2C_IDLE_CON		&			// Stop in idle Mode
			I2C_IPMI_DIS		&			// IPMI Enable
			I2C_7BIT_ADD		&
			I2C_SLW_DIS			&			// Disable Slew Rate Control
			I2C_SM_DIS			&			// SMBus Input Level
			I2C_GCALL_DIS		&
			I2C_STR_DIS			&
			I2C_ACK				&			// Send ACK during 
											// acknowledge
			I2C_ACK_DIS			&
			I2C_RCV_DIS			&
			I2C_STOP_DIS		&
			I2C_RESTART_DIS		&
			I2C_START_DIS		,
			i2c_fscl_100khz		);			// FSCL = 100KHz

	return;
}

//***********************************************************************
// i2c_srf02_init()
//	Configures I2C
//
//***********************************************************************

void	i2c_srf02_init(void)
{
	i2c_srf02_ping();

	return;
}

//***********************************************************************
// i2c_srf02_ping()
//	Configures I2C
//
//***********************************************************************

void	i2c_srf02_ping(void)
{
	if(srf02_time == 72)					// Call every 72ms 
	{										// (6*lisy300_time)
		// Front sensor
		StartI2C();							// Generates I2C Start condition
		i2c_delay();						// Wait for Start condition

		MasterWriteI2C(srf02_front_w);		// Send SRF02 address
		MasterWriteI2C(srf02_cmd);			// Send SRF02 a command
		MasterWriteI2C(srf02_rrm_cm);		// Have SRF02 range /w result in 
											// cm
		StopI2C();							// Generates I2C Stop condition
		do{	i2c_delay();}					// Wait for Start condition
		while(I2CCONbits.PEN == 1);
	}

	if(srf02_time >= 144)					// Call every 72ms 
	{										// (6*lisy300_time)
		// Right sensor
		StartI2C();							// Generates I2C Start condition
		i2c_delay();						// Wait for Start condition

		MasterWriteI2C(srf02_right_w);		// Send SRF02 address
		MasterWriteI2C(srf02_cmd);			// Send SRF02 a command
		MasterWriteI2C(srf02_rrm_cm);		// Have SRF02 range /w result in 
											// cm
		StopI2C();							// Generates I2C Stop condition
		do{	i2c_delay();}					// Wait for Start condition
		while(I2CCONbits.PEN == 1);
	}

	return;
}

//***********************************************************************
// i2c_srf02_range()
//	Configures I2C
//
//***********************************************************************

void	i2c_srf02_range(void)
//void	i2c_srf02_range(unsigned int *value)
//unsigned int	i2c_srf02_range(void)
{
	unsigned int	tvalue[3];

	int			n;

	// Front sensor
	// Range High byte
	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_front_w);		// Send SRF02 address Write
	MasterWriteI2C(srf02_range_h);		// Have SRF02 send range high 
										// byte
	RestartI2C();						// 
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.RSEN == 1);

	MasterWriteI2C(srf02_front_r);		// Have SRF02 range /w result in 
										// cm

	tvalue[0] = MasterReadI2C();			// Get Range High byte
	//value[0] = MasterReadI2C();			// Get Range High byte
	NotAckI2C();
	i2c_delay();						// Wait for Start condition
	StopI2C();							// Generates I2C Stop condition

	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	tvalue[0] = tvalue[0] << 8;					// Shift high byte left
	//value[0] = value[0] << 8;					// Shift high byte left

	// Range Low byte
	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_front_w);		// Send SRF02 address
	MasterWriteI2C(srf02_range_l);		// Have SRF02 send range high	
										// byte
	RestartI2C();
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.RSEN == 1);

	MasterWriteI2C(srf02_front_r);		// Have SRF02 range /w result in 
										// cm
	tvalue[0] = tvalue[0] | MasterReadI2C();	// Get Range Low byte
	//value[0] = value[0] | MasterReadI2C();	// Get Range Low byte
	NotAckI2C();
	i2c_delay();						// Wait for Start condition
	StopI2C();							// Generates I2C Stop condition
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	// Right sensor
	// Range High byte
	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_right_w);		// Send SRF02 address Write
	MasterWriteI2C(srf02_range_h);		// Have SRF02 send range high 
										// byte
	RestartI2C();						// 
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.RSEN == 1);

	MasterWriteI2C(srf02_right_r);		// Have SRF02 range /w result in 
										// cm

	tvalue[1] = MasterReadI2C();		// Get Range High byte
	//value[1] = MasterReadI2C();		// Get Range High byte
	NotAckI2C();
	i2c_delay();						// Wait for Start condition
	StopI2C();							// Generates I2C Stop condition

	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	tvalue[1] = tvalue[1] << 8;			// Shift high byte left
	//value[1] = value[1] << 8;			// Shift high byte left

	// Range Low byte
	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_right_w);		// Send SRF02 address
	MasterWriteI2C(srf02_range_l);		// Have SRF02 send range high	
										// byte
	RestartI2C();
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.RSEN == 1);

	MasterWriteI2C(srf02_right_r);		// Get SRF02 range /w result in 
										// cm
	tvalue[1] = tvalue[1] | MasterReadI2C();	// Get Range Low byte
	//value[1] = value[1] | MasterReadI2C();	// Get Range Low byte
	NotAckI2C();
	i2c_delay();						// Wait for Start condition
	StopI2C();							// Generates I2C Stop condition
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	i2c_srf02_ping();					// Activate next range

	for(n = 0; n < 2; n++)
	{
		//global_srf02_range[n] = value[n];		// Store value for log
		global_srf02_range[n] = tvalue[n];		// Store value for log
	}

	//return(value);
	return;
}

//***********************************************************************
// i2c_srf02_autotune()
//	Configures I2C
//
//***********************************************************************

void	i2c_srf02_autotune(unsigned int *value)
//unsigned int	i2c_srf02_autotune(void)
{
	//unsigned int	value[3];
	int		n;

	// Front Sensor
	// Autotune High byte
	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_front_w);		// Send SRF02 address Write
	MasterWriteI2C(srf02_autotune_h);	// Have SRF02 send autotune high 
										// byte
	RestartI2C();						// 
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.RSEN == 1);

	MasterWriteI2C(srf02_front_r);		// Have SRF02 autotune /w result 
										// in cm

	value[0] = MasterReadI2C();			// Get Autotune High byte
	NotAckI2C();
	i2c_delay();						// Wait for Start condition
	StopI2C();							// Generates I2C Stop condition

	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	value[0] = value[0] << 8;			// Shift high byte left

	// Autotune Low byte
	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_front_w);		// Send SRF02 address
	MasterWriteI2C(srf02_autotune_l);	// Have SRF02 send autotune high
										// byte
	RestartI2C();
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.RSEN == 1);

	MasterWriteI2C(srf02_front_r);	// Have SRF02 autotune /w result 
										// in cm
	value[0] = value[0] | MasterReadI2C();	// Get autotune Low byte
	NotAckI2C();
	i2c_delay();						// Wait for Start condition
	StopI2C();							// Generates I2C Stop condition
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	// Right Sensor
	// Autotune High byte
	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_right_w);		// Send SRF02 address Write
	MasterWriteI2C(srf02_autotune_h);	// Have SRF02 send autotune high 
										// byte
	RestartI2C();						// 
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.RSEN == 1);

	MasterWriteI2C(srf02_right_r);		// Have SRF02 autotune /w result 
										// in cm

	value[1] = MasterReadI2C();			// Get Autotune High byte
	NotAckI2C();
	i2c_delay();						// Wait for Start condition
	StopI2C();							// Generates I2C Stop condition

	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	value[1] = value[1] << 8;			// Shift high byte left

	// Autotune Low byte
	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_right_w);		// Send SRF02 address
	MasterWriteI2C(srf02_autotune_l);	// Have SRF02 send autotune low
										// byte
	RestartI2C();
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.RSEN == 1);

	MasterWriteI2C(srf02_right_r);	// Have SRF02 autotune /w result 
										// in cm
	value[1] = value[1] | MasterReadI2C();	// Get autotune Low byte
	NotAckI2C();
	i2c_delay();						// Wait for Start condition
	StopI2C();							// Generates I2C Stop condition
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	for(n = 0; n < 2; n++)
	{
		global_srf02_autotune[n] = value[n];	// Store value for log
	}

	return;
	//return(value);
}

//***********************************************************************
// i2c_delay()
//	Delay for I2C
//
//***********************************************************************

void	i2c_delay(void)
{
	unsigned char x;
	
	for(x=0; x<15; x++);				// Wait for Start condition

	return;
}

//***********************************************************************
// i2c_srf02_change_address()
//	Changes the address of a SRF02 to 0xE2
//
//	Only 1 SRF02 may be attached to the I2C bus while changing address
//***********************************************************************

void	i2c_srf02_change_address(void)
{
	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_front_w);		// Send SRF02 address
	MasterWriteI2C(srf02_cmd);			// Send SRF02 a command
	MasterWriteI2C(srf02_change_addr_1);// Change address of SRF02

	StopI2C();							// Generates I2C Stop condition
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_front_w);		// Send SRF02 address
	MasterWriteI2C(srf02_cmd);			// Send SRF02 a command
	MasterWriteI2C(srf02_change_addr_2);// Change address of SRF02

	StopI2C();							// Generates I2C Stop condition
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition

	MasterWriteI2C(srf02_front_w);		// Send SRF02 address
	MasterWriteI2C(srf02_cmd);			// Send SRF02 a command
	MasterWriteI2C(srf02_change_addr_3);// Change address of SRF02

	StopI2C();							// Generates I2C Stop condition
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	StartI2C();							// Generates I2C Start condition
	i2c_delay();						// Wait for Start condition
	
	MasterWriteI2C(srf02_front_w);		// Send SRF02 address
	MasterWriteI2C(srf02_cmd);			// Send SRF02 a command
	MasterWriteI2C(srf02_right_w);		// Set SRF02 address

	StopI2C();							// Generates I2C Stop condition
	do{	i2c_delay();}					// Wait for Start condition
	while(I2CCONbits.PEN == 1);

	return;
}

//***********************************************************************
// i2c_srf02_loop()
//	Loop runs every 72ms for srf02
//
//***********************************************************************

void	i2c_srf02_loop(void)
{
	/*
	if(srf02_time >= 72)					// Call every 72ms 
	{										// (6*lisy300_time)
		i2c_srf02_range();					// Get range
		//i2c_srf02_autotune(srf02_autotune);	// Get autotune

		srf02_time = 0;						// Reset timer
	}
	*/

	if(srf02_time == 72)					// Call every 72ms 
	{										// (6*lisy300_time)
		i2c_srf02_ping();					// Activate next range
	}

	else if(srf02_time >= 144)					// Call every 72ms 
	{										// (6*lisy300_time)
		i2c_srf02_range();					// Get range
		//i2c_srf02_autotune(srf02_autotune);	// Get autotune

		srf02_time = 0;						// Reset timer
	}

	return;
}
//***********************************************************************
// vim: set foldmethod=indent:
