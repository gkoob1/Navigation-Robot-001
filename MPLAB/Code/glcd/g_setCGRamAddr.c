#include "g_xlcd.h"
#include "g_delay.h"

#ifdef _RB14

/*******************************************************************
Function Name:          setCGRamAddr
Description:            This function sets the character generator 
                        address of the LCD controller.The user must 
                        first check if the controller is busy or not 
                        by calling the busyXLCD() function.
Input parametes:        char address
Return value:           void
********************************************************************/

void g_SetCGRamAddr( char address)
{
    RW_PIN = 0;  /* enable write */
    RS_PIN = 0;  /* Select Instruction Reg */

    /* configure the common data pins as output */
    TRIS_DATA_PIN_7 = 0;
    TRIS_DATA_PIN_6 = 0;
    TRIS_DATA_PIN_5 = 0;
    TRIS_DATA_PIN_4 = 0;
    
    DATA_PIN_7 = 0;

    /* DB6 must be 1 for setting CGRam ADDR */
    DATA_PIN_6 = 1;
    
    /* address is only of 6 bits in length */

    
# ifdef EIGHT_BIT_INTERFACE
    /* configure the other pins as output */
    TRIS_DATA_PIN_3 = 0;
    TRIS_DATA_PIN_2 = 0;
    TRIS_DATA_PIN_1 = 0;
    TRIS_DATA_PIN_0 = 0;
    
    DATA_PIN_5 = (unsigned int)((address & 0x20)>>5);
    DATA_PIN_4 = (unsigned int)((address & 0x10)>>4);
    DATA_PIN_3 = (unsigned int)((address & 0x08)>>3);
    DATA_PIN_2 = (unsigned int)((address & 0x04)>>2);
    DATA_PIN_1 = (unsigned int)((address & 0x02)>>1);
    DATA_PIN_0 = (unsigned int)((address & 0x01)>>0);

#else
    
    DATA_PIN_5 = (unsigned int)((address & 0x02)>>1);
    DATA_PIN_4 = (unsigned int)((address & 0x01)>>0);
#endif

    E_PIN = 1;
    g_DelayEPulseWidthHigh();
    E_PIN = 0;
    g_DelayEPulseWidthLow();
    RS_PIN = 0; 
    RW_PIN = 0; 
    
    /*configure all pins to input mode */
    TRIS_DATA_PIN_7 = 1;
    TRIS_DATA_PIN_6 = 1;
    TRIS_DATA_PIN_5 = 1;
    TRIS_DATA_PIN_4 = 1;
# ifdef EIGHT_BIT_INTERFACE
    TRIS_DATA_PIN_3 = 1;
    TRIS_DATA_PIN_2 = 1;
    TRIS_DATA_PIN_1 = 1;
    TRIS_DATA_PIN_0 = 1;
#endif

} /* end of function */

#else
#warning "Does not build on this target"
#endif
