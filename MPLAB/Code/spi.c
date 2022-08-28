// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// SPI
// NAME: koob_graham
// DATE: 2011-02-18 
//***********************************************************************

//***********************************************************************
// spi_init()
//	Configures SPI
//
//	See FRM - 20
//
//	file:///C:/Program%20Files/Microchip/mplabc30/v3.25/docs/periph_lib/dsPIC30F_dsPIC33F_PIC24H_SPI_Help.htm
//***********************************************************************

void	spi_init(void)
{
	OpenSPI2(	FRAME_ENABLE_OFF	&		// Frame disabled
				FRAME_SYNC_OUTPUT	&
				ENABLE_SDO_PIN	& //DISABLE_SDO_PIN		&		// SDO pin disabled
				SPI_MODE16_ON		&		// Receive 16b
				SPI_SMP_OFF			&
				//SPI_SMP_ON			&
				SPI_CKE_OFF			&
				SLAVE_ENABLE_OFF	&		// SS2 pin disabled
				CLK_POL_ACTIVE_LOW	&
				MASTER_ENABLE_ON	&		// Master
				SEC_PRESCAL_1_1		&		// Secondary Prescale = 1:1
				PRI_PRESCAL_4_1		,		// Primary Prescale = 4:1
				SPI_ENABLE			&		// Enable SPI
				SPI_IDLE_STOP		&		// Stop SPI when idle
				SPI_RX_OVFLOW_CLR	);		// Clear RX overflow bit

	return;
}
	
//***********************************************************************
// spi_lisy300_init()
//	Initializes LISY300 gyroscope
//
//	See FRM - 20
//
//	See	LISY300 datasheet
//
//	See	ADC101S021 datasheet
//
//	file:///C:/Program%20Files/Microchip/mplabc30/v3.25/docs/periph_lib/dsPIC30F_dsPIC33F_PIC24H_SPI_Help.htm
//***********************************************************************

void	spi_lisy300_init(void)
{
	spi_cs_lisy300 = spi_select;			// Select LISY300

	WriteSPI2(1);							// Activates SCK2

	while(!IFS1bits.SPI2IF);				// Wait for 1 communication  
											// cycle

	spi_cs_lisy300 = spi_deselect;			// Deselect LISY300

	ReadSPI2();								// Clear SPIRBF 
	IFS1bits.SPI2IF = clear;				// Clear SPI2IF

	return;
}

//***********************************************************************
// spi_lisy300_shutdown()
//	Shuts LISY300 gyroscope down
//
//	See FRM - 20
//
//	See	LISY300 datasheet
//
//	See	ADC101S021 datasheet
//
//	file:///C:/Program%20Files/Microchip/mplabc30/v3.25/docs/periph_lib/dsPIC30F_dsPIC33F_PIC24H_SPI_Help.htm
//***********************************************************************

void	spi_lisy300_shutdown(void)
{

	spi_cs_lisy300 = spi_select;			// Select LISY300

	WriteSPI2(1);							// Activates SCK2

	while(!IFS1bits.SPI2IF);				// Wait for 1 communication  
											// cycle

	spi_cs_lisy300 = spi_deselect;			// Deselect LISY300

	IFS1bits.SPI2IF = clear;				// Clear SPI2IF

	return;
}

//***********************************************************************
// spi_lisy300()
//	Communicates with LISY300 gyroscope
//
//	See FRM - 20
//
//	See	LISY300 datasheet
//
//	See	ADC101S021 datasheet
//
//	file:///C:/Program%20Files/Microchip/mplabc30/v3.25/docs/periph_lib/dsPIC30F_dsPIC33F_PIC24H_SPI_Help.htm
//***********************************************************************

unsigned	spi_lisy300(void)
{
	unsigned	result;

	//spi_cs2 = spi_select;			// Select LISY300
	//spi_cs3 = spi_select;			// Select LISY300

	spi_cs_lisy300 = spi_select;			// Select LISY300
	WriteSPI2(0xDEAD);
	while(!DataRdySPI2());
	spi_cs_lisy300 = spi_deselect;			// Deselect LISY300
	result = ReadSPI2();

	//spi_cs2 = spi_deselect;			// Select LISY300
	//spi_cs3 = spi_deselect;			// Select LISY300


	result = spi_lisy300_convert(result);

	PORTE = 0x00E0;

	return(result);
}

//***********************************************************************
// spi_lisy300_convert()
//	Converts value from LISY300 gyroscope to usable number
//
//	See FRM - 20
//
//	See	LISY300 datasheet
//
//	See	ADC101S021 datasheet
//
//	file:///C:/Program%20Files/Microchip/mplabc30/v3.25/docs/periph_lib/dsPIC30F_dsPIC33F_PIC24H_SPI_Help.htm
//***********************************************************************

unsigned	spi_lisy300_convert(unsigned	raw)
{
	unsigned	result;

	// Rotated clockwise V_out falls
	// Rotated counter-clockwise V_out rises
	//
	// LISY300 Sensitivity = 3.3mV/DEG/s
	// 10b ADC = 3.22mV/step ~ 1DEG/step
	//
	// LISY300 f_update = 88HZ

	result = raw >>3;				// Remove trailing 0s

	//result = result * 0.322;			// Convert to voltage
	result = result * 3.22;			// Convert to voltage

	return(result);
}
	
//***********************************************************************
// spi_lisy300_degree()
//	Converts value from LISY300 gyroscope to usable degree
//
//	See FRM - 20
//
//	See	LISY300 datasheet
//
//	See	ADC101S021 datasheet
//
//	file:///C:/Program%20Files/Microchip/mplabc30/v3.25/docs/periph_lib/dsPIC30F_dsPIC33F_PIC24H_SPI_Help.htm
//***********************************************************************

int		spi_lisy300_degree(int	raw)
{
	int		result;

	result = result / 3.3;			// Convert to voltage

	return(result);
}

//***********************************************************************
// spi_lisy300_delta()
//	Converts voltage from LISY300 gyroscope to change in voltage from cal
//	If result is + then robot is turning counter-clockwise
//	If result is - then robot is turning clockwise
//
//	See FRM - 20
//
//	See	LISY300 datasheet
//
//	See	ADC101S021 datasheet
//***********************************************************************

int		spi_lisy300_delta(unsigned	raw)
{
	int		result;

	result = raw - lisy300_cal;

	return(result);
}

//***********************************************************************
// spi_lisy300_loop()
//	Loop runs every 12ms for LISY300
//
//***********************************************************************

void	spi_lisy300_loop(void)
{
	int				lisy300_degree = 0,
					lisy300_degree_delta = 0,
					lisy300_delta = 0;
	unsigned int	lisy300_voltage = 1650;	// 1.65V

	if(lisy300_time >= 12)				// Call every 12ms
	{
		// Get voltage from gyroscope
		lisy300_voltage = spi_lisy300();
		lisy300_degree = spi_lisy300_degree(lisy300_voltage);// TEST

		// Convert to delta
		lisy300_delta = spi_lisy300_delta(lisy300_voltage);

		// Convert to degrees
		lisy300_degree_delta = spi_lisy300_degree(lisy300_delta);

		// Reset timer for next round
		lisy300_time = 0;

		// If robot is turning
		if((lisy300_delta <= -10) || (lisy300_delta >= 10))
		{
			// Store value for log
			global_lisy300_degree_turn = global_lisy300_degree_turn 
										+ lisy300_degree_delta;
		}
	}

	return;
}

//***********************************************************************
// spi_microsd_init()
//***********************************************************************

void	spi_microsd_init(void)

//	SD_SEND_OP_COND (ACMD41)
//		setting operational conditions
//		set HCSb in OCR
//			1 = SDHC or SDXC card
//			0 = not SDHC or SDXC
//
//	

//***********************************************************************
// vim: set foldmethod=indent:
