// PROTOTYPES
void setup_cpu(void);
void StartTimer(unsigned int time);
void WaitTimer(void);
void GetSoftware(void);

//i2c.c
void set_cursor(unsigned char pos);
void setup_lcd(void);
void read_i2c_buffer(unsigned char addr, unsigned char reg, unsigned char byte_count);
void write_i2c(unsigned char addr, unsigned char reg, unsigned char data);
void write_i2c_s_string(unsigned char addr, unsigned char reg);
unsigned char i2c_rx(char ack);
char i2c_tx(unsigned char d);
void i2c_start(void);
void i2c_stop(void);
void i2c_dly(void);

#define SDA		TRISBbits.TRISB5
#define SCL		TRISBbits.TRISB6
#define SDA_IN	PORTBbits.RB5
#define SCL_IN	PORTBbits.RB6

