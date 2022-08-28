// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// keypad
// NAME: koob_graham
// DATE: 2011-03-09 
//***********************************************************************

//***********************************************************************
// manual_control()
//	Configures I2C
//
//***********************************************************************

int		manual_control(int control)
{
	if(debounce_time <= 0)
	{
		if(sw_back == _on) 
		{
			control = 1;
			debounce_time = 15;
		}

		else if(sw_up == _on)
		{
			control = 2;
			debounce_time = 15;
		}

		else if(sw_down == _on) 
		{
			control = 3;
			debounce_time = 15;
		}

		else if(sw_enter == _on) 
		{
			control = 4;
			debounce_time = 15;
		}

		else
		{
			//control = 0;
		}
	}

	return(control);
}
