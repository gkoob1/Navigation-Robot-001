// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// LCD
// NAME: koob_graham
// DATE: 2011-03-09 
//**********************************************************************

//**********************************************************************
// lcd_init()
//	Configures LCD
//
//**********************************************************************

void	lcd_init(void)
{
	//char	* buffer;
	//char	mesg1[] = {'H','A','R','D','W','A','R','E','\0'};
	//char	mesg2[] = {'P','E','R','I','P','H','E','R','A','L',' ','I','B',' ','\0'};

	lcd_init_reset();

	g_OpenXLCD(	FOUR_BIT				&		// 4b interface
				TWO_LINE				&		// 2 line display
				SEG1_50_SEG51_100		&
				COM1_COM16				);

	while(g_BusyXLCD());

	// Send 1st line
	//buffer = mesg1;
	g_SetDDRamAddr(0x00);
	while(g_BusyXLCD());
	//g_PutsXLCD(buffer);
	//while(g_BusyXLCD());

	// Send 2nd line
	//g_SetDDRamAddr(0x40);
	//while(g_BusyXLCD());
	//buffer = mesg2;
	//g_PutsXLCD(buffer);
	//while(g_BusyXLCD());

	return;
}

//**********************************************************************
// lcd_init_reset()
//	Resets LCD
//
//**********************************************************************

void	lcd_init_reset(void)
{
	g_DelayPORXLCD();

	g_OpenXLCD(	FOUR_BIT				&		// 4b interface
				TWO_LINE				&		// 2 line display
				SEG1_50_SEG51_100		&
				COM1_COM16				);

	while(g_BusyXLCD());

	g_SetDDRamAddr(0x00);
	while(g_BusyXLCD());

	return;
}

//**********************************************************************
// lcd_message_default()
//	Message for when robot is ready to accept commands
//
//**********************************************************************

void	lcd_message_default(void)
{
	char	* buffer;
	char	mesg1[] = {' ','B','A','C','K',' ','=',' ','M','A','P',' ','R','O','O','M','\0'};
	char	mesg2[] = {' ','U','P',' ','=',' ','O','P','T','O','N','S','\0'};

	if(message_time < 1000)
	{
		return;
	}

	g_WriteCmdXLCD(CLEAR_XLCD);
    while(g_BusyXLCD());
	g_DelayXLCD();

	// Send 1st line
	buffer = mesg1;
	g_SetDDRamAddr(0x00);
	while(g_BusyXLCD());
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x40);
	while(g_BusyXLCD());
	buffer = mesg2;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	message_time = 0;

	return;
}

//**********************************************************************
// lcd_message_moving()
//	Message for when robot is ready to accept commands
//
//**********************************************************************

void	lcd_message_moving(void)
{
	char	* buffer;
	char	mesg1[] = {'M','A','P','P','I','N','G',' ','R','O','O','M','\0'};
	char	mesg2[] = {'B','A','C','K',' ','=',' ','S','T','O','P','\0'};

	if(message_time < 1000)
	{
		return;
	}

	g_WriteCmdXLCD(CLEAR_XLCD);
    while(g_BusyXLCD());
	g_DelayXLCD();

	// Send 1st line
	buffer = mesg1;
	g_SetDDRamAddr(0x00);
	while(g_BusyXLCD());
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x40);
	while(g_BusyXLCD());
	buffer = mesg2;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	message_time = 0;

	return;
}

//***********************************************************************
// lcd_message_moving_test_a()
//	Message for when robot is ready to accept commands
//
//***********************************************************************

void	lcd_message_moving_test_a(void)
{
	char	* buffer;
	//char	mesg1[] = {'M','A','P','P','I','N','G',' ','R','O','O','M','\0'};
	//char	mesg2[] = {'B','A','C','K',' ','=',' ','S','T','O','P','\0'};

	char	mesg1[] = {'R','F',' ',' ','R','R',' ',' ','G','M',' ','M','A',' ','M','B','\0'};
	//char	mesg1[] = {'R','F',' ',' ','R','R',' ',' ','D',' ',' ','G','M',' ','M','O','\0'};
	//char	mesg1[] = {'R','F',' ',' ','R','R',' ',' ','D',' ',' ','G','M',' ','E','N','\0'};
	char	mesg2[5];
	char	mesg3[5];
	char	mesg4[5];
	char	mesg5[5];
	char	mesg6[5];

	char	mesg10[5];
	char	mesg11[5];
	char	mesg12[5];
	char	mesg13[5];
	char	mesg14[5];
	char	mesg15[5];
	char	mesg16[5];
	char	mesg17[5];
	char	mesg18[5];

	char	mesg20[5];
	char	mesg21[5];
	char	mesg22[5];
	char	mesg23[5];
	char	mesg24[5];
	char	mesg25[5];
	char	mesg26[5];
	char	mesg27[5];
	char	mesg28[5];

	itoa(mesg2,global_srf02_range[0],10);
	itoa(mesg3,global_srf02_range[1],10);

	itoa(mesg4,global_lisy300_direction,10);

	itoa(mesg5,global_movement,10);
	itoa(mesg6,global_movement_old,10);

	itoa(mesg10,global_movement_x[global_movement_z - 1],10);
	itoa(mesg11,global_movement_x[global_movement_z - 2],10);
	itoa(mesg12,global_movement_x[global_movement_z - 3],10);
	itoa(mesg13,global_movement_x[global_movement_z - 4],10);
	itoa(mesg14,global_movement_x[global_movement_z - 5],10);
	itoa(mesg15,global_movement_x[global_movement_z - 6],10);
	itoa(mesg16,global_movement_x[global_movement_z - 7],10);
	itoa(mesg17,global_movement_x[global_movement_z - 8],10);
	itoa(mesg18,global_movement_x[global_movement_z - 9],10);

	itoa(mesg20,global_movement_y[global_movement_z],10);
	itoa(mesg21,global_movement_y[global_movement_z - 1],10);
	itoa(mesg22,global_movement_y[global_movement_z - 2],10);
	itoa(mesg23,global_movement_y[global_movement_z - 3],10);
	itoa(mesg24,global_movement_y[global_movement_z - 4],10);
	itoa(mesg25,global_movement_y[global_movement_z - 5],10);
	itoa(mesg26,global_movement_y[global_movement_z - 6],10);
	itoa(mesg27,global_movement_y[global_movement_z - 7],10);
	itoa(mesg28,global_movement_y[global_movement_z - 8],10);

	//itoa(mesg6,qei_count,10);

	if(message_time < 500)
	{
		return;
	}

	g_WriteCmdXLCD(CLEAR_XLCD);
    //while(g_BusyXLCD());
	g_DelayXLCD();

	// Send 1st line
	buffer = mesg1;
	g_SetDDRamAddr(0x00);
	while(g_BusyXLCD());
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x40);
	while(g_BusyXLCD());
	buffer = mesg2;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x44);
	//g_SetDDRamAddr(0x43);
	while(g_BusyXLCD());
	buffer = mesg3;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	/*
	g_SetDDRamAddr(0x48);
	//g_SetDDRamAddr(0x46);
	while(g_BusyXLCD());
	buffer = mesg4;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());
	*/

	/*
	// Send 2nd line
	g_SetDDRamAddr(0x4C);
	//g_SetDDRamAddr(0x4A);
	while(g_BusyXLCD());
	buffer = mesg5;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4E);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg6;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());
	*/

	/*
	// Send 2nd line
	g_SetDDRamAddr(0x49);
	//g_SetDDRamAddr(0x4A);
	while(g_BusyXLCD());
	buffer = mesg5;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4C);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg6;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());
	*/

	// Send 2nd line
	g_SetDDRamAddr(0x07);
	//g_SetDDRamAddr(0x4A);
	while(g_BusyXLCD());
	buffer = mesg10;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x08);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg11;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x09);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg12;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0A);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg13;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0B);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg14;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0C);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg15;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0D);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg16;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0E);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg17;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0F);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg18;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());


	// Send 2nd line
	g_SetDDRamAddr(0x47);
	//g_SetDDRamAddr(0x4A);
	while(g_BusyXLCD());
	buffer = mesg20;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x48);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg21;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x49);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg22;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4A);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg23;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4B);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg24;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4C);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg25;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4D);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg26;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4E);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg27;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x06);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg6;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	/*
	// Send 2nd line
	g_SetDDRamAddr(0x4F);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg28;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());
	*/
	
	message_time = 0;

	return;
}

//**********************************************************************
// lcd_message_moving_test_b()
//	Message for when robot is ready to accept commands
//
//**********************************************************************

void	lcd_message_moving_test_b(void)
{
	char	* buffer;
	//char	mesg1[] = {'M','A','P','P','I','N','G',' ','R','O','O','M','\0'};
	//char	mesg2[] = {'B','A','C','K',' ','=',' ','S','T','O','P','\0'};

	//char	mesg1[] = {'R','F',' ',' ','R','R',' ',' ','G','M',' ','M','A',' ','M','B','\0'};
	char	mesg1[] = {'R','F',' ',' ','R','R',' ',' ','G','M','O',' ','M','O','\0'};
	//char	mesg1[] = {'R','F',' ',' ','R','R',' ',' ','D',' ',' ','G','M',' ','M','O','\0'};
	//char	mesg1[] = {'R','F',' ',' ','R','R',' ',' ','D',' ',' ','G','M',' ','E','N','\0'};
	char	mesg2[5];
	char	mesg3[5];
	char	mesg4[5];
	char	mesg5[5];
	char	mesg6[5];
	char	mesg7[5];

	/*
	char	mesg10[5];
	char	mesg11[5];
	char	mesg12[5];
	char	mesg13[5];
	char	mesg14[5];
	char	mesg15[5];
	char	mesg16[5];
	char	mesg17[5];
	char	mesg18[5];

	char	mesg20[5];
	char	mesg21[5];
	char	mesg22[5];
	char	mesg23[5];
	char	mesg24[5];
	char	mesg25[5];
	char	mesg26[5];
	char	mesg27[5];
	char	mesg28[5];
	*/

	itoa(mesg2,global_srf02_range[0],10);
	itoa(mesg3,global_srf02_range[1],10);

	itoa(mesg4,global_lisy300_direction,10);

	itoa(mesg5,global_movement,10);
	itoa(mesg6,global_movement_old,10);

	itoa(mesg7,qei_count,10);

	/*
	itoa(mesg10,global_movement_x[global_movement_z - 1],10);
	itoa(mesg11,global_movement_x[global_movement_z - 2],10);
	itoa(mesg12,global_movement_x[global_movement_z - 3],10);
	itoa(mesg13,global_movement_x[global_movement_z - 4],10);
	itoa(mesg14,global_movement_x[global_movement_z - 5],10);
	itoa(mesg15,global_movement_x[global_movement_z - 6],10);
	itoa(mesg16,global_movement_x[global_movement_z - 7],10);
	itoa(mesg17,global_movement_x[global_movement_z - 8],10);
	itoa(mesg18,global_movement_x[global_movement_z - 9],10);

	itoa(mesg20,global_movement_y[global_movement_z],10);
	itoa(mesg21,global_movement_y[global_movement_z - 1],10);
	itoa(mesg22,global_movement_y[global_movement_z - 2],10);
	itoa(mesg23,global_movement_y[global_movement_z - 3],10);
	itoa(mesg24,global_movement_y[global_movement_z - 4],10);
	itoa(mesg25,global_movement_y[global_movement_z - 5],10);
	itoa(mesg26,global_movement_y[global_movement_z - 6],10);
	itoa(mesg27,global_movement_y[global_movement_z - 7],10);
	itoa(mesg28,global_movement_y[global_movement_z - 8],10);
	*/


	if(message_time < 500)
	{
		return;
	}

	g_WriteCmdXLCD(CLEAR_XLCD);
    //while(g_BusyXLCD());
	g_DelayXLCD();

	// Send 1st line
	buffer = mesg1;
	g_SetDDRamAddr(0x00);
	while(g_BusyXLCD());
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Range Front
	// Send 2nd line
	g_SetDDRamAddr(0x40);
	while(g_BusyXLCD());
	buffer = mesg2;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Range Right
	// Send 2nd line
	g_SetDDRamAddr(0x44);
	//g_SetDDRamAddr(0x43);
	while(g_BusyXLCD());
	buffer = mesg3;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	/*
	// Direction
	// Send 2nd line
	g_SetDDRamAddr(0x48);
	//g_SetDDRamAddr(0x46);
	while(g_BusyXLCD());
	buffer = mesg4;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());
	*/

	// Global Movement
	// Send 2nd line
	g_SetDDRamAddr(0x48);
	//g_SetDDRamAddr(0x4A);
	while(g_BusyXLCD());
	buffer = mesg5;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Global Movement Old
	// Send 2nd line
	g_SetDDRamAddr(0x4A);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg6;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Encoder
	// Send 2nd line
	g_SetDDRamAddr(0x4C);
	while(g_BusyXLCD());
	buffer = mesg7;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	/*
	// Send 2nd line
	g_SetDDRamAddr(0x49);
	//g_SetDDRamAddr(0x4A);
	while(g_BusyXLCD());
	buffer = mesg5;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4C);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg6;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());
	*/

	/*
	// Send 2nd line
	g_SetDDRamAddr(0x07);
	//g_SetDDRamAddr(0x4A);
	while(g_BusyXLCD());
	buffer = mesg10;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x08);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg11;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x09);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg12;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0A);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg13;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0B);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg14;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0C);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg15;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0D);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg16;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0E);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg17;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x0F);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg18;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());


	// Send 2nd line
	g_SetDDRamAddr(0x47);
	//g_SetDDRamAddr(0x4A);
	while(g_BusyXLCD());
	buffer = mesg20;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x48);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg21;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x49);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg22;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4A);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg23;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4B);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg24;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4C);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg25;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4D);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg26;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4E);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg27;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x06);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg6;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x4F);
	//g_SetDDRamAddr(0x4D);
	while(g_BusyXLCD());
	buffer = mesg28;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());
	*/
	
	message_time = 0;

	return;
}
//***********************************************************************
// lcd_message_complete()
//	Message for when robot is ready to accept commands
//
//***********************************************************************

// TODO
void	lcd_message_complete(void)
{
	char	* buffer;
	char	mesg1[] = {'X',' ','D','I','S','T','A','N','C','E',' ','=',' ','\0'};
	char	mesg2[] = {'Y',' ','D','I','S','T','A','N','C','E',' ','=',' ','\0'};
	char	char_distance_x[5] = {'0','0','0','\0'},
			char_distance_y[5] = {'0','0','0','\0'};

	// Convert distance in m to printable characters

	g_WriteCmdXLCD(CLEAR_XLCD);
    while(g_BusyXLCD());
	g_DelayXLCD();

	// Send 1st line
	buffer = mesg1;
	g_SetDDRamAddr(0x00);
	while(g_BusyXLCD());
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	buffer = char_distance_x;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x40);
	while(g_BusyXLCD());
	buffer = mesg2;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	buffer = char_distance_y;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	return;
}

//***********************************************************************
// lcd_message_options()
//	Message for when robot is ready to accept commands
//
//***********************************************************************

void	lcd_message_options(void)
{
	char	* buffer;
	char	mesg1[] = {'U','P',' ','=',' ','S','C','R','O','L','E','\0'};
	char	mesg2[] = {'B','A','C','K',' ','=',' ','B','A','C','K','\0'};

	if(message_time < 1000)
	{
		return;
	}

	g_WriteCmdXLCD(CLEAR_XLCD);
    //while(g_BusyXLCD());
	g_DelayXLCD();

	// Send 1st line
	buffer = mesg1;
	g_SetDDRamAddr(0x00);
	while(g_BusyXLCD());
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x40);
	while(g_BusyXLCD());
	buffer = mesg2;
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	message_time = 0;

	return;
}


//***********************************************************************
// lcd_scroll()
//
//***********************************************************************

int		lcd_scroll(int control, int n, int n_max)
{
	if(control == 2)
	{
		n++;

		if(n > n_max)
		{
			n = 0;
		}
	}

	return(n);
}

//***********************************************************************
// lcd_select()
//
//***********************************************************************

int		lcd_select(int control, int n, int n_max)
{
	if(control == 1)
	{
		n++;

		if(n > n_max)
		{
			n = 0;
		}
	}

	return(n);
}

//***********************************************************************
// lcd_message()
//	Message for when robot is ready to accept commands
//
//***********************************************************************

/*
void	lcd_message(int screen, int position)
{
	char	* buffer;
	char	mesg[5][20];
	enum	def_lcd_screen	lcd_screen;
	enum	def_lcd_item	lcd_item;

	if(message_time < 1000)
	{
		return;
	}

	// Select message for LCD
	switch(lcd_screen)
	{
		case home_screen:
		{
			mesg[item_0][] = {' ','M','A','P',' ','R','O','O','M','\0'};
			mesg[item_1][] = {' ','O','P','T','I','O','N','S','\0'};
		}
			break;
		case map_room_screen:
		{
			mesg[item_0][] = {'*','M','A','P','P','I','N','G',' ','R','O','O','M','\0'};
			mesg[item_1][] = {' ','S','T','O','P','\0'};
			mesg[item_2][] = {' ','D','I','S','T','A','N','C','E',' ','X',':',' ','\0'};			// TODO
			itoa(mesg[item_2][13],global_distance_x,10);  // TODO
			mesg[item_3][] = {' ','D','I','S','T','A','N','C','E',' ','Y',':',' ','\0'};			// TODO
			itoa(mesg[item_3][13],global_distance_y,10);  // TODO
		}
			break;
		case options_screen:
		{
			mesg[item_0][] = {' ','B','A','C','K','\0'};
			mesg[item_1][] = {' ','S','E','N','S','O','R','S','\0'};
			mesg[item_2][] = {' ','S','E','T','T','I','N','G','S','\0'};
		}
			break;
		case sensors_screen:
		{
			mesg[item_0][] = {' ','B','A','C','K','\0'};
			mesg[item_1][] = {' ','E','N','C','O','D','E','R','\0'};
			mesg[item_2][] = {' ','G','Y','R','O','S','O','P','E','\0'};
			mesg[item_3][] = {' ','U','L','T','R','A','S','O','N','I','C','\0'};
		}
			break;
		case gyroscope_screen:
		{
			mesg[item_0][] = {' ','B','A','C','K','\0'};
			mesg[item_1][] = {'G','Y','O',' ','D','I','R','E','C','T','I','O','N',':',' ',' ',' ',' ',' ','\0'};
			itoa(mesg[item_1][16],global_lisy300_direction,10);
		}
			break;
		case encoder_screen:
		{
			mesg[item_0][] = {' ','B','A','C','K','\0'};
			mesg[item_1][] = {'E','N','C','O','D','E','R',' ',':',' ',' ',' ',' ',' ',' ',' ','\0'};
			itoa(mesg[item_1][16],qei_count,10);
		}
			break;
		case ultrasonic_screen:
		{
			mesg[item_0][] = {' ','B','A','C','K','\0'};
			mesg[item_1][] = {'F','R','O','N','T',':',' ',' ',' ',' ',' ',' ',' ','\0'};
			itoa(mesg[item_2][8],global_srf02_range[0],10);
			mesg[item_2][] = {'R','I','G','H','T',':',' ',' ',' ',' ',' ',' ',' ','\0'};
			itoa(mesg[item_2][8],global_srf02_range[1],10);
		}
			break;
		case settings_screen:
		{
			mesg[item_0][] = {' ','B','A','C','K','\0'};
		}
			break;
		case mapping_incomplete_screen:
		{
			mesg[item_0][] = {'*','M','A','P','P','I','N','G',' ','I','N','C','O','M','P','L','E','T','E','\0'};
			mesg[item_1][] = {' ','B','A','C','K','\0'};
			mesg[item_2][] = {' ','D','I','S','T','A','N','C','E',' ','X',':',' ','\0'};			// TODO
			itoa(mesg[item_2][13],global_distance_x,10);  // TODO
			mesg[item_3][] = {' ','D','I','S','T','A','N','C','E',' ','Y',':',' ','\0'};			// TODO
			itoa(mesg[item_3][13],global_distance_y,10);  // TODO
		}
			break;
		case mapping_complete_screen:
		{
			mesg[item_0][] = {'*','M','A','P','P','I','N','G',' ','C','O','M','P','L','E','T','E','\0'};
			mesg[item_1][] = {' ','R','E','S','E','T','\0'};
			mesg[item_2][] = {' ','D','I','S','T','A','N','C','E',' ','X',':',' ','\0'};			// TODO
			itoa(mesg[item_2][13],global_distance_x,10);  // TODO
			mesg[item_3][] = {' ','D','I','S','T','A','N','C','E',' ','Y',':',' ','\0'};			// TODO
			itoa(mesg[item_3][13],global_distance_y,10);  // TODO
		}
			break;
		case error_screen:
		{
			mesg[item_0][] = {'*','*','E','R','R','O','R','*','*','\0'};
		}
			break;
		default:
		{
			mesg[item_0][] = {'*','*','E','R','R','O','R','*','*','\0'};
		}
	}

	g_WriteCmdXLCD(CLEAR_XLCD);
    while(g_BusyXLCD());
	g_DelayXLCD();

	// Send 1st line
	buffer = mesg[lcd_position][];
	g_SetDDRamAddr(0x00);
	while(g_BusyXLCD());
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	// Send 2nd line
	g_SetDDRamAddr(0x40);
	while(g_BusyXLCD());
	buffer = mesg[lcd_position++][];
	g_PutsXLCD(buffer);
	while(g_BusyXLCD());

	message_time = 0;

	return;
}
*/
