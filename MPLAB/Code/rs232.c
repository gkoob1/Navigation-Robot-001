// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// RS232
// NAME: koob_graham
// DATE: 2011-02-15 
//***********************************************************************

//***********************************************************************
// rs232_init()
//	Configures rs232
//
//	See FRM - 19
//
//		file:///C:/Program%20Files/Microchip/mplabc30/v3.25/docs/periph_lib/dsPIC30F_dsPIC33F_PIC24H_UART_Help.htm#_Toc154547423
//
//	UART1 Baud Rate = 19200
//	UART2 Baud Rate = 
//***********************************************************************

void	rs232_init(void)
{
// UART1

	OpenUART1(	UART_EN					&
				UART_IDLE_CON			&
				UART_DIS_WAKE			&
				UART_DIS_LOOPBACK		&
				UART_DIS_ABAUD			&
				UART_NO_PAR_8BIT		&
				UART_1STOPBIT			,
				UART_INT_TX				&
				UART_TX_PIN_NORMAL		&
				UART_TX_ENABLE			&
				UART_INT_RX_CHAR		&
				UART_ADR_DETECT_DIS		&
				UART_RX_OVERRUN_CLEAR	,
				baud1					);

	// UART1 BAUD Rate Generator (BRG)
	//	BAUD = FCY/(16 (UxBRG + 1))
	//	UxBRG = FCY/(16 * BAUD) - 1

// UART2
	
	// Unimplemented

	return;
}

//***********************************************************************
// rs232_motor_speed()
//
//
//	See FRM - 19
//
//***********************************************************************

void	rs232_motor_speed(unsigned int speed[])
{
	WriteUART1(speed[left]);
	while(BusyUART1());

	WriteUART1(speed[right]);
	while(BusyUART1());

	return;
}

//***********************************************************************
// vim: set foldmethod=indent:
