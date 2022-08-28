#include "p24fxxxx.h"
#include "stdio.h"
#include "stdlib.h"
#include "SRF08.h"

#define ACK			0xff		// send i2c ack
#define NACK		0x00		// send i2c nack

unsigned char buffer[36];
unsigned char s[21];

void read_i2c_buffer(unsigned char addr, unsigned char reg, unsigned char byte_count)
{
unsigned char x;

	i2c_start();					// send i2c data bytes	
	if(i2c_tx(addr&0xfe)) {		// abort if slave does not acknowledge
		i2c_stop();
		for(x=0; x<(byte_count); x++)	buffer[x] = 255;		//no acknowledge,reset buffers
		return;
	}	

	if(i2c_tx(reg)) {				// reg
		i2c_stop();
		for(x=0; x<(byte_count); x++)	buffer[x] = 255;		//no acknowledge,reset buffers
		return;
	}
	i2c_start();					// repeated start
	if(i2c_tx(addr|0x01)) {		// addr again including read bit
		i2c_stop();
		for(x=0; x<(byte_count); x++)	buffer[x] = 255;		//no acknowledge,reset buffers
		return;
	}
	for(x=0; x<(byte_count-1); x++)	buffer[x] = i2c_rx(ACK);
	buffer[byte_count-1] = i2c_rx(NACK);	
	i2c_stop();
}

void setup_lcd(void)
{
	i2c_start();					// send i2c data bytes

	if(i2c_tx(0xC6)) {			// abort if slave does not acknowledge
		i2c_stop();
		return;
	}
	if(i2c_tx(0)) {
		i2c_stop();
		return;
	}
	if(i2c_tx(4)) {
		i2c_stop();
		return;
	}
	if(i2c_tx(12)) {
		i2c_stop();
		return;
	}
	i2c_stop();
}

void set_cursor(unsigned char pos)
{
	i2c_start();					// send i2c data bytes

	if(i2c_tx(0xc6)) {			// abort if slave does not acknowledge
		i2c_stop();
		return;
	}
	if(i2c_tx(0)) {
		i2c_stop();
		return;
	}
	if(i2c_tx(2)) {
		i2c_stop();
		return;
	}
	if(i2c_tx(pos)) {
		i2c_stop();
		return;
	}
	i2c_stop();
}


void write_i2c(unsigned char addr, unsigned char reg, unsigned char data)
{
	i2c_start();					// send i2c data bytes

	if(i2c_tx(addr)) {			// abort if slave does not acknowledge
		i2c_stop();
		return;
	}
	if(i2c_tx(reg)) {
		i2c_stop();
		return;
	}
	if(i2c_tx(data)) {
		i2c_stop();
		return;
	}
	i2c_stop();
}

void write_i2c_s_string(unsigned char addr, unsigned char reg)
{
unsigned char x;

	i2c_start();					// send i2c data bytes
	if(i2c_tx(addr)) {			// abort if slave does not acknowledge
		i2c_stop();
		return;
	}
	if(i2c_tx(reg)) {
		i2c_stop();
		return;
	}
	for(x=0; s[x]!=0; x++){	//transmit until terminating null
		if(i2c_tx(s[x])) {
			i2c_stop();
			return;
		}
	}
	i2c_stop();
}

unsigned char i2c_rx(char ack)
{
unsigned char x, d=0;

	SDA = 1;					//hc125 will turn sda output off
	for(x=0; x<8; x++) {
		d <<= 1;		
		do {
			SCL = 1;
		}
		while(SCL_IN==0);				// wait for any SCL clock stretching
		i2c_dly();
		if(SDA_IN) d |= 1;
		SCL = 0;
	} 
	if(ack) SDA = 0;
	else SDA = 1;
	SCL = 1;
	i2c_dly();							// send (N)ACK bit
	SCL = 0;
	SDA = 1;
	return d;
}


char i2c_tx(unsigned char d)
{
unsigned char x;

	for(x=8; x; x--) {
		i2c_dly();
		if(d&0x80) SDA = 1;
		else SDA = 0;
		SCL = 1;
		i2c_dly();
		d <<= 1;
		SCL = 0;
	}
	i2c_dly();
	SDA = 1;
	SCL = 1;
	i2c_dly();	
	x = SDA_IN;						// possible ACK bit
	SCL = 0;
	return x;
}


void i2c_start(void)
{
	SDA = 1;						// i2c start bit sequence
	i2c_dly();
	SCL = 1;
	i2c_dly();
	SDA = 0;
	i2c_dly();
	SCL = 0;
	i2c_dly();
}


void i2c_stop(void)
{
	SDA = 0;						// i2c stop bit sequence
	i2c_dly();
	SCL = 1;
	i2c_dly();
	SDA = 1;
	i2c_dly();
}


void i2c_dly(void)
{
unsigned char x;
	for(x=0; x<15; x++);
}




