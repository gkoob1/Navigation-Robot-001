// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// Interrupts
// NAME: koob_graham
// DATE: 2011-02-24
//***********************************************************************

//***********************************************************************
// interrupt_init()
//	Configures interrupts
//
//	See FRM - 6
//
//	See	DS51284 - 8
//
//	Priority Level
//
//		7
//		6
//			Timer 2
//		5
//		4
//		3
//		2
//		1
//		0
//***********************************************************************
void	interrupt_init(void)
{
	//INTCON2bits.ALTIVT = set;				// Use alternate IVT

	// Syntax for Writing ISRs
	//	__attribute__((interrupt [(
	//								[ save(symbol-list)]
	//								[, irq(irqid)]
	//								[, altirq(altirqid)]
	//								[, preprologue(asm)]
	//								)]
	//					))

	// Coding ISRs
	//	void__attribute__((__interrupt__(__save__(var1,var2)))	isr0(void);

	// Using Macros to Declare Simple ISRs
	// void_ISRFAST _T2Interrupt(void);

	// void__attribute__((__interrupt__(__altirq__(53)))) MyAltIRQ(void)

	//	IRQ#	Primary Name	Alternate Name		Vector Function
	//	6		_T2Interrupt	_AltT2Interrupt		TMR2 Timer 2 expired

	INTCON1bits.
	return;
}

//***********************************************************************
// _T2Interrupt()
//	Configures interrupts
//
//	See FRM - 6
//
//***********************************************************************

//void __attribute__((__interrupt__)) _T2Interrupt(void)
//void _ISRFAST _T2Interrupt(void)
//{
//	t2_time++;									// Increment t2_time every ms
//
//	IFS0bits.T2IF = clear;						// Clear flag
//}

//***********************************************************************
// vim: set foldmethod=indent:
