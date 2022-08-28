// dsPIC30F6015 MICROCONTROLLER.    
// Oscillator.
// NAME: koob_graham
// DATE: 2011-02-07
//***********************************************************************

//***********************************************************************
// osc_init()
//	Configures oscillator
//
//	See 6015 - 21.2.8
//
//	OSC = FRC (7.37MHz)
//  Postscaler = 1
//***********************************************************************

void	osc_init(void)
{
	// Use these to change OSCCON low byte
	//OSCCONL = 0x46;
	//OSCCONL = 0x57;

	// Use these to change OSCCON high byte
	//OSCCONH = 0x78;
	//OSCCONH = 0x9A;

	//OSCCONBITS.OSWEN	=				// Oscillator Switch Enable bit

	OSCCONL = 0x46;
	OSCCONL = 0x57;
	OSCCONBITS.LPOSCEN	= disabled		// LP OSC disabled

	//OSCCONBITS.CF		=				// Clock Fail Detect bit
	//OSCCONBITS.LOCK		= 

	OSCCONL = 0x46;
	OSCCONL = 0x57;
	OSCCONBITS.POST		= postscaler_1	// Postscaler doesn't alter CLK

	//OSCCONBITS.COSC		=			// Current Oscillator Source 
										// Status bit

	OSCTUN	= 0;						// FRC = 7.37MHz


//***********************************************************************
// vim: set foldmethod=indent:
