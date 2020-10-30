
//=============================================================================
// funzioni I2C

#include <htc.h> 

#define I2C_SCL	TRISCbits.TRISC3
#define I2C_SDA	TRISCbits.TRISC4

/*******************************************************************
Macro       : StopI2C()
Remarks     : This macro initiates stop condition and waits till the stop signal
		sequence is terminated.This macro is applicable only to master
*******************************************************************/
#define StopI2C()  SSPCON2bits.PEN=1;while(SSPCON2bits.PEN)

/*******************************************************************
Macro       : StartI2C()
Remarks     : This macro initiates start condition and waits till the start signal
		sequence is terminated. This macro is applicable only to master
*******************************************************************/
#define StartI2C()  SSPCON2bits.SEN=1;while(SSPCON2bits.SEN)

/*******************************************************************
Macro       : RestartI2C()
Remarks     : This macro initiates Restart condition and waits till the Restart signal
		sequence is terminated. This macro is applicable only to master
*******************************************************************/
#define RestartI2C()  SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN)

/*******************************************************************
Macro       : NotAckI2C()
Remarks     : This macro initiates negetive acknowledgement condition and 
		waits till the acknowledgement sequence is terminated.
		This macro is applicable only to master
*******************************************************************/
#define NotAckI2C()     SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN)

/*******************************************************************
Macro       : AckI2C()
Remarks     : This macro initiates positive acknowledgement condition and 
		waits till the acknowledgement sequence is terminated.
		This macro is applicable only to master
*******************************************************************/
#define AckI2C()        SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN)

/************************************************************************
Macro :  DataRdyI2C() 
Remarks            : This Macro determines if there is any byte to read from
			SSPxBUF register.
*************************************************************************/
#define DataRdyI2C()    (SSPSTATbits.BF)


/**********************************************************************************************
Function Prototype : void IdleI2C(void) 
Remarks            : This function will be in a wait state until Start Condition Enable bit,
                     Stop Condition Enable bit, Receive Enable bit, Acknowledge Sequence
                     Enable bit of I2C Control register and Transmit Status bit I2C Status
                     register are clear. The IdleI2C function is required since the hardware
                     I2C peripheral does not allow for spooling of bus sequence. The I2C
                     peripheral must be in Idle state before an I2C operation can be initiated
                     or write collision will be generated.
***********************************************************************************************/
void IdleI2C( void )
{
  while ( ( SSPCON2 & 0x1F ) || ( SSPSTATbits.R_W ) )
     continue;
}


/*********************************************************************
Function Prototype : void CloseI2C(void)
Remarks            : This function disables the I2C module and clears the
			I2C Interrupt Enable and Flag bits.
*********************************************************************/
void CloseI2C( void )
{
  SSPCON1 &= 0xDF;                // disable synchronous serial port
}


/********************************************************************
*   Function Name:  OpenI2C                                         *
*   Return Value:   void                                            *
*   Parameters:     SSP peripheral setup bytes                      *
*   Description:    This function sets up the SSP module on a       * 
*                   PIC18CXXX device for use with a Microchip I2C   *
*                   EEPROM device or I2C bus device.                *
********************************************************************/

/*
void OpenI2C( unsigned char sync_mode, unsigned char slew )
{
  SSPSTAT &= 0x3F;                // power on state 
  SSPCON1 = 0x00;                 // power on state
  SSPCON2 = 0x00;                 // power on state
  SSPCON1 |= sync_mode;           // select serial mode 
  SSPSTAT |= slew;                // slew rate on/off 

  I2C_SCL = 1;
  I2C_SDA = 1;
  SSPCON1 |= SSPENB;              // enable synchronous serial port 

}
*/

void OpenI2C_StSpeed()            // clock 100KHz
{
  SSPSTAT &= 0x3F;                // power on state 
  SSPCON1 = 0x08;                 // power on state + MASTER mode
  SSPCON2 = 0x00;                 // power on state
  SSPSTAT |= 0x80;                // slew rate disable (100KHz, 1MHz) 

// clock=FOSC/(4*SSPADD+1)
// SSPADD= (FOSC*10)/4 -1
	SSPADD=9;						//default	
   #if FREQMHZ == 4 
         SSPADD=9;
   #elif FREQMHZ == 8
         SSPADD=19;		
   #elif FREQMHZ == 16
         SSPADD=39;
   #elif FREQMHZ == 32
         SSPADD=79;
   #endif

  I2C_SCL = 1;
  I2C_SDA = 1;
  SSPCON1 |= 0x20;                // enable synchronous serial port 

}


/********************************************************************
*     Function Name:    ReadI2C                                     *
*     Return Value:     contents of SSPBUF register                 *
*     Parameters:       void                                        *
*     Description:      Read single byte from I2C bus.              *
********************************************************************/

unsigned char ReadI2C( void )
{
if( ((SSPCON1&0x0F)==0x08) || ((SSPCON1&0x0F)==0x0B) )	//master mode only
  SSPCON2bits.RCEN = 1;           // enable master for 1 byte reception
  while ( !SSPSTATbits.BF );      // wait until byte received  
  return ( SSPBUF );              // return with read byte 
}

/********************************************************************
*     Function Name:    WriteI2C                                    *
*     Return Value:     Status byte for WCOL detection.             *
*     Parameters:       Single data byte for I2C bus.               *
*     Description:      This routine writes a single byte to the    * 
*                       I2C bus.                                    *
********************************************************************/

unsigned char WriteI2C( unsigned char data_out )
{
  SSPBUF = data_out;           // write single byte to SSPBUF
  if ( SSPCON1bits.WCOL )      // test if write collision occurred
   return ( -1 );              // if WCOL bit is set return negative #
  else
  {
	if( ((SSPCON1&0x0F)==0x08) || ((SSPCON1&0x0F)==0x0B) )	//master mode only
	{ 
	    while( SSPSTATbits.BF );   // wait until write cycle is complete   
	    IdleI2C();                 // ensure module is idle
	    if ( SSPCON2bits.ACKSTAT ) // test for ACK condition received
	    	 return ( -2 );			// return NACK
		else return ( 0 );              //return ACK
	}
	
  }
}

