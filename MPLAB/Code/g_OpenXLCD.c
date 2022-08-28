#include "g_xlcd.h"
#include "g_delay.h"

#ifdef _RB14

/*******************************************************************
Function Name:          OpenXLCD
Description:            This function configure the IO pins  
                        and initializes the LCD controller
                        the lcdtype should contain data on the type 
                        of interface and number of lines of display.
Input parameters:       char lcdtype 
Return value:           none
********************************************************************/
void g_OpenXLCD(char lcdType)
{

	/* Allow a delay for POR.(minimum of 15ms) */
	g_DelayPORXLCD();	
	
	/*Initialize the data port/control pins to zero */
	DATA_PIN_7 = 0;
	DATA_PIN_6 = 0;
	DATA_PIN_5 = 0;
	DATA_PIN_4 = 0;
	
//	# ifdef EIGHT_BIT_INTERFACE
//		DATA_PIN_3 = 0;
//		DATA_PIN_2 = 0;
//		DATA_PIN_1 = 0;
//		DATA_PIN_0 = 0;
//	#endif
	
	RW_PIN = 0;
	RS_PIN = 0;
	E_PIN = 0;
	
	/* Configure the data pins as outputs */
	TRIS_DATA_PIN_7 = 0;
	TRIS_DATA_PIN_6 = 0;
	TRIS_DATA_PIN_5 = 0;
	TRIS_DATA_PIN_4 = 0;
	
//	#ifdef EIGHT_BIT_INTERFACE
//		TRIS_DATA_PIN_3 = 0;
//		TRIS_DATA_PIN_2 = 0;
//		TRIS_DATA_PIN_1 = 0;
//		TRIS_DATA_PIN_0 = 0;
//	#endif
	
	/* Make all control pins as outputs */
	TRIS_RW = 0;
	TRIS_RS = 0;
	TRIS_E = 0;
 
	/* First Step  - Function Set as specified by lcdType*/
	g_WriteCmdXLCD(lcdType); 
	
	/* wait for command completion */
	while(g_BusyXLCD());
	g_DelayPORXLCD();	
		  
	/* Second Step - Display ON/OFF CONTROL*/
	g_WriteCmdXLCD(DON & BLINK_ON & CURSOR_OFF);
	//g_WriteCmdXLCD(DON & BLINK_OFF & CURSOR_ON);

    /* wait for command completion */
	while(g_BusyXLCD());
	g_DelayPORXLCD();	
		
	/* Third Step - LCD Clear	*/	
	g_WriteCmdXLCD(CLEAR_XLCD);

    /* wait for command completion */	
    //while(g_BusyXLCD());
	g_DelayPORXLCD();	
	
	/*Fourth Step - Entry Mode Set	*/
	g_WriteCmdXLCD(ENTIRE_SHIFT_OFF & INCR_MODE);

    /* wait for command completion */
    while(g_BusyXLCD());
	g_DelayPORXLCD();	

   } /* end of function */

#else
#warning "Does not build on this target"
#endif
