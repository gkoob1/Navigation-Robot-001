////////////////////////////////////////////////////////////////////////////
////                             PIC18_LCD.C                               ////
////                 Drivers for the LCD module.                        ////
////            This code is for the "C" Project Board.                 ////
////            Re-written by Larry Cruse February 2002                 ////
////                                                                    ////
////  lcd_init()   Must be called before any other function.            ////
////                                                                    ////
////  lcd_putc(c)  Will display c on the next position of the LCD.      ////                    
////                                                                    ////
////  lcd_gotoxy(x,y) Set write position on LCD (upper left is 1,1)     ////
////                                                                    ////
////                                                                    ////
////////////////////////////////////////////////////////////////////////////
		//     E2  rs		data/command 
		//     E1  rw		read/write
		//     E0  enable	chip enable active high
		//
		//     D4	(D4-0)	least significant bit
		//     D5	(D5-1)	(value is in second nibble)
		//     D6	(D6-2)
		//     D7	(D7-3)	most significant bit
		//
		//     LCD pins D0-D3 are not used.
		//
//******************************************************************************//
// 	This will initialize the lcd and set the level on the control outputs
// 	These bytes need to be sent to the LCD
// 	28H = 4 bit mode, 2 lines
// 	0eH = display on, cursor on, no blinking
// 	06H = cursor move right, no display shift
//	01H = clear display and home it
//******************************************************************************//
void lcd_init(void) 
{
CMD_DATA = 0;		//output_low(CMD_DATA); 	rs = 0 Put into command mode
READ_WRITE = 0;		//output_low(READ_WRITE); 	rw = 0 Put into write mode
ENABLE = 0;		//output_low(ENABLE); 		enable = 0 Disable the device 
			//**************************************************************
			//The following should be added if the LCD is not always
			//Starting up after power is applied.  From the manufacturer.
			//    delay_ms(16);          //LCD software reset procedure
			//    lcd_send_nibble(3);    //command 33 to LCD
			//    delay_ms(5);           //LCD software reset first delay
			//    lcd_send_nibble(3);
			//    delay_ms(1);           //LCD software reset second delay   
			//    lcd_send_nibble(3);    //command 32 to LCD
			//    delay_ms(1);           //LCD software reset last delay     
			//    lcd_send_nibble(2);    //send 33H & 32H for HD44780
			//**************************************************************
	//Send four bytes to initialize LCD
lcd_send_byte(0x00,0x28);	 //4 bit,2 line,small font
lcd_send_byte(0x00,0x0e);	 //on, cursor on, no blinking
lcd_send_byte(0x00,0x06);	 //cursor right, no display shift
lcd_send_byte(0x00,0x01);	 //Clear display
#ifndef simulate
//   delay_ms(2);
#endif		 
}
//******************************************************************************//
//	This routine will send one byte to the LCD		
//	address = 0/1 command/data, byte n = data or command value	
//******************************************************************************//
void lcd_send_byte(unsigned char data_com, unsigned char n) 
{
#ifndef simulate			// use delay for LCD Ready
//   delay_ms(1);
#endif	
if (data_com)				//rs -> 0 = command, 1 = data
	{
	CMD_DATA = 1;
	}
else	{
	CMD_DATA = 0;	        	
	}
Nop();
READ_WRITE = 0;				//output_low(READ_WRITE); 	rw = 0 = write
Nop();
ENABLE = 0;				//output_low(ENABLE); 	enable = 0 active high signal
PORTD = (n & 0xf0);			//data  = n put high nibble out on the data lines
ENABLE = 1;				//output_high(ENABLE); 	//enable = 1 enable the LCD
Nop();		    			//hold it there
Nop();
ENABLE = 0;				//output_low(ENABLE); 	//enable = 0 latch it in on the falling edge
PORTD = ((n << 4) & 0xf0);		//data  = n put low nibble out on the data lines
ENABLE = 1;				//output_high(ENABLE); 	//enable = 1 enable the LCD
Nop();		    			//hold it there
Nop();
ENABLE = 0;				//output_low(ENABLE); 	//enable = 0 latch it in on the falling edge
}

//******************************************************************************//
// 	This will set the lcd to the X position on the Y line		
//	Y = 1 is line one, X is position 1 = first position (not zero)	
//******************************************************************************//
void lcd_gotoxy(unsigned char x, unsigned char y) 
{
unsigned char address;
if(y!=1)
	{
	address=0x40;			// add 40H for second line of display
    	}
else
	{
	address=0;			// stay on first line
	}
address= (address + (x-1));		// first address location is zero, add offset
lcd_send_byte(0,0x80|address); 		// MSBit high indicates setting DDRAM Address
}                           		// 0 = command and not data
//******************************************************************************//
//	This will parse the values sent in the routine and do the intended 	
//	function to the LCD.							
//******************************************************************************//
void lcd_putc(unsigned char c) 
{
lcd_send_byte(0x01,c);     
}


