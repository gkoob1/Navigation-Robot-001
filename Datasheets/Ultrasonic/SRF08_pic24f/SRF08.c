/*****************************************************
*      SRF08 Example program for PIC24FJ16GA002      *
*            Displaying results on an LCD03          *
*     											     *
*  		This will also work for SRF02/10/235         *
*             By James Henderson 2009                *
*****************************************************/

#include <p24fxxxx.h> 
#include "SRF08.h"
#include "stdlib.h"
#include "stdio.h"

_CONFIG1(FWDTEN_OFF & JTAGEN_OFF & GCP_ON)
_CONFIG2(FNOSC_FRCPLL & OSCIOFNC_ON & IOL1WAY_ON & I2C1SEL_SEC) 

extern unsigned char buffer[36];
extern unsigned char s[21];

int main(void) 
{
unsigned int range;										// Stores the range value
	
	setup_cpu();										// General chip setup
	StartTimer(0x61A8);									// Pause to wait for everything to  power up
	WaitTimer();
	setup_lcd();										// lcd03 clear screen and hide cursor
	GetSoftware();										// Gets the software version of the SRF08

	
	while(1)											// Loop here forever
	{	
		read_i2c_buffer(0xE0, 1, 3);					// Read in the light reading, range high byte and range low byte into buffer[0],[1] and [2]
		range = buffer[1];								// Put the range result together from low and high bytes
		range = (range << 8) + buffer[2];
	
		StartTimer(17500);								// start timer for 70mS
		write_i2c(0xE0, 0, 81);							// Send command to SRF08 to perform a ranging in CM
		set_cursor(21);
		sprintf(s, "range = %i  ", range);
		write_i2c_s_string(0xc6,0);					  	// sends ascii string s[] to lcd03 
		set_cursor(41);
		sprintf(s, "Light = %i  ", buffer[0]);
		write_i2c_s_string(0xc6,0);					  	// sends ascii string s[] to lcd03
		WaitTimer();									// Wait for timer to finish before taking another ranging.
	}
	return(0);
}

/***********************************************/
// Functions for SRF08               
/***********************************************/

void GetSoftware(void)
{
	read_i2c_buffer(0xE0, 0,1);				 	  // read software version Placing it in buffer[0]
	set_cursor(1);								  // set cursor to possition 1
	sprintf(s,"SRF08 software v: %2d",buffer[0]); 
	write_i2c_s_string(0xc6,0);					  // sends ascii string s[] to lcd03 
}


/**********************************
* Timer routines
**********************************/
void StartTimer(unsigned int time)
{
	TMR1 = 0;						// Reset timer to 0
	PR1 = time;						// Timer1 period set
	IFS0bits.T1IF = 0;				// Clears Timer 1 interupt flag
	IEC0bits.T1IE = 0;				// Disable timer 1 interupts 
	T1CONbits.TON = 1;				// Starts timer
}

void WaitTimer(void)
{
	while(!IFS0bits.T1IF);			// While the interupt flag is not set
	T1CONbits.TON = 0;				// Stop timer
}

/**************************************
* General Chip setup
**************************************/
void setup_cpu(void)
{
	CLKDIV = 0x0000;				// 8MHz to PLL, 32MHz out = 16MIPs
	T1CON = 0x20;					// 1:64 prescaler
	AD1PCFG = 0x9fff;				
}

