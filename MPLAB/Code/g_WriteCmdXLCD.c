#include "g_xlcd.h"
#include "g_delay.h"

#ifdef _RB14

/*******************************************************************
Function Name :         WriteCmdXLCD
Description:            This function write a command to the 
                        Instruction Register of the LCD controller.
                        The user must first check if the controller 
                        is busy or not by calling the BusyXLCD()
                        function.
Input parameters:       char cmd
Return value:           void
********************************************************************/
void g_WriteCmdXLCD(char cmd)
{

	RW_PIN = 0;   /* enable write */
	RS_PIN = 0;   /* select Instruction Reg */
	
	/* configure the common data pins as output */
	TRIS_DATA_PIN_7 = 0;
	TRIS_DATA_PIN_6 = 0;
	TRIS_DATA_PIN_5 = 0;
	TRIS_DATA_PIN_4 = 0;
	
//	# ifdef EIGHT_BIT_INTERFACE
//		/* configure the other pins as output */
//		TRIS_DATA_PIN_3 = 0;
//		TRIS_DATA_PIN_2 = 0;
//		TRIS_DATA_PIN_1 = 0;
//		TRIS_DATA_PIN_0 = 0;
//    	DATA_PIN_7 = (unsigned int)((cmd & 0x80)>>7);
//     	DATA_PIN_6 = (unsigned int)((cmd & 0x40)>>6);
//	    DATA_PIN_5 = (unsigned int)((cmd & 0x20)>>5);
//	    DATA_PIN_4 = (unsigned int)((cmd & 0x10)>>4);		
//		DATA_PIN_3 = (unsigned int)((cmd & 0x08)>>3);
//		DATA_PIN_2 = (unsigned int)((cmd & 0x04)>>2);
//		DATA_PIN_1 = (unsigned int)((cmd & 0x02)>>1);
//		DATA_PIN_0 = (unsigned int)((cmd & 0x01)>>0);
//	#else
    	DATA_PIN_7 = (unsigned int)((cmd & 0x80)>>7);
     	DATA_PIN_6 = (unsigned int)((cmd & 0x40)>>6);
	    DATA_PIN_5 = (unsigned int)((cmd & 0x20)>>5);
	    DATA_PIN_4 = (unsigned int)((cmd & 0x10)>>4);		

    E_PIN = 1;
    g_DelayEPulseWidthHigh();
    E_PIN = 0;
    g_DelayEPulseWidthLow();

		DATA_PIN_7 = (unsigned int)((cmd & 0x08)>>3);
		DATA_PIN_6 = (unsigned int)((cmd & 0x04)>>2);
		DATA_PIN_5 = (unsigned int)((cmd & 0x02)>>1);
		DATA_PIN_4 = (unsigned int)((cmd & 0x01)>>0);
//	#endif
	
    E_PIN = 1;
    g_DelayEPulseWidthHigh();
    E_PIN = 0;
    g_DelayEPulseWidthLow();
    RS_PIN = 0; 
    RW_PIN = 0; 
	
}  /* end of function */

#else 
#warning "Does not build on this target"
#endif
