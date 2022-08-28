#include "g_xlcd.h"
#include "g_delay.h"

#ifdef _RB14

/*******************************************************************
Function Name:          PutsXLCD
Description:            This function writes a string of characters 
                        into the LCD controller.it stops transmission
                        before the null character.(which is not sent).
Input parameters:       char  *buffer 
Return value:           void
********************************************************************/
void g_PutsXLCD(char *buffer)
{

    while(*buffer != '\0')
    {
        /* wait for command completion */
        while(g_BusyXLCD());
        
        g_WriteDataXLCD(*buffer); /* calling another function */
                                /* to write each char to the lcd module */
        /* check next char */
        buffer++;
    }
    /* wait for command completion */
    while(g_BusyXLCD());

} /* end of function */

#else
#warning "Does not build on this target"
#endif
