// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// Get values from sensors
// NAME: koob_graham
// DATE: 2011-03-18  
//***********************************************************************

//***********************************************************************
// sensors()
//	movement
//
//***********************************************************************

void	sensors(void)
{
	// For LISY300 Gyroscope
	if(lisy300_time >= 12)				// Call every 12ms
	{
		lisy300_voltage = spi_lisy300();

		lisy300_delta = spi_lisy300_delta(lisy300_voltage);

		lisy300_time = 0;

		// If robot is turning
		if((lisy300_delta <= -2) || (lisy300_delta >= 2))
		{
			lisy300_turn = lisy300_turn + lisy300_delta;

			lisy300_delta = 0;

			x++;
		}

		if(lisy300_delta == 0)
		{
			lisy300_delta = 0;
			y++;
		}
	}


	// For SRF02 Ultrasonic
	if(srf02_time >= 72)			// Call every 72ms 
	{								// (6*lisy300_time)
		srf02_range = i2c_srf02_range();	// Get range

		srf02_time = 0;				// Reset timer

		manual_control(speed);		// TEST
	}

	return;
}
