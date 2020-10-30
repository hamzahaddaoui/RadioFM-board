//DEFINE*************************************************************************************
#define PMODE 	0								//PRESET MODE
#define SMODE	1     							//SEARCH MODE
#define HLSI 	0x02                       		//HIGH LOW SIDE INJECTION (?)
#define MS		0x03                        	//MONO(1) o STEREO(0)
#define SMUTE	0x04	                       	//SOFT MUTE
#define HCC     0x05                          	//HIGH CUT CONTROL  (?)
#define SNC		0x06                            //STEREO NOISE CANCELLING  
#define STBY 	0x07							//STAND-BY
#define XTAL	0x08							//XTAL (default->1)
#define SSL		0x09							//SEARCH STOP LEVEL
//-------------------------------------------------------------------------------------------
//VARIABILI GLOBALI**************************************************************************
unsigned char byte1=0, byte2=0, byte3=0, byte4=0;
//PROTOTIPI FUNZIONI*************************************************************************
void TEA_cmd (unsigned char command,char stat);	/*Funzione generica (Vedi define)
												0x02 - HLSI (High Low Side Injection)
												0x03 - MS (Mono/Stereo)
												0x04 - SMUTE (Soft Mute)
												0x05 - HCC (High Cut Control) 
												0x06 - SNC (Stereo Noise Cancelling)
												0x07 - STBY (Stand-by)
												0x08 - XTAL 
												0x09 - SSL (in SMODE)
														1 - LOW
														2 - MID
														3 - HIGH
												*/	
void TEA_setFreq(int freq);						//SET FREQUENZA
void TEA_writeData(void);						//Scrive Dati su radio
void TEA_readData(void);						//Legge Dati da radio
//-------------------------------------------------------------------------------------------
void TEA_cmd (unsigned char command,char stat){
	switch (command){							//Modifico il bit, relativo alla funzione scelta
		case 2:
			byte3&=0b11101111; byte3|=stat<<4;
			break;
		case 3:
			byte3&=0b11110111; byte3|=stat<<3;
			break;
		case 4:
			byte4&=0b11110111; byte4|=stat<<3;
			break;
		case 5:
			byte4&=0b11111011; byte4|=stat<<2;
			break;
		case 6:
			byte4&=0b11111101; byte4|=stat<<1;
			break;
		case 7:
			byte4&=0b10111111; byte4|=stat<<6;
			break;
		case 8:
			byte4&=0b11101111; byte4|=stat<<4;
			break;
		case 9:
			byte3&=0b10011111; byte3|=stat<<5;
			break;
		default:
			break;
	}
	TEA_writeData();
}
void TEA_setFreq(int freq){
	unsigned long rawFreq=0;
	if (freq==1){									//SE freqNext in SMODE	
		byte3|=0b10000000;							//SEARCH UP-DOWN = 1 (UP)
		TEA_readData();
	}
	else if(freq==0){							//SE freqPrevious in SMODE
		byte3&=0b01111111;							//SEARCH UP-DOWN = 0 (DOWN)
		TEA_readData();
	}
	else{										//SE freqSet in PMODE
		rawFreq=freq;
		rawFreq=rawFreq*10000;
		rawFreq+=225000;
		rawFreq=rawFreq*4;
		rawFreq/=32768;
		freq=rawFreq;
		byte1=0;								//SEARCH MODE = 0
		byte1=freq>>8;
		byte2=freq;			
	}
	TEA_writeData();
}
void TEA_writeData(void){
	IdleI2C();
    StartI2C();                     		
    WriteI2C(0xC0);                				
    IdleI2C();
    WriteI2C(byte1);  		
    IdleI2C();
    WriteI2C(byte2);                  			
    IdleI2C();
    WriteI2C(byte3);       					
    IdleI2C();
    WriteI2C(byte4);  
    IdleI2C();
    WriteI2C(0b01000000);        
    StopI2C();
}
void TEA_readData(void){
	unsigned char read1, read2,read3,read4,read5;
	IdleI2C();
    StartI2C();                 
    WriteI2C(0xC1);                
    read1=ReadI2C();             
    AckI2C();
    read2=ReadI2C();           
    AckI2C();
    read3=ReadI2C();                
    AckI2C();
    read4=ReadI2C();                
    AckI2C();
    read5=ReadI2C();                
    NotAckI2C();
    StopI2C();
    byte1=read1&0b00111111|0b01000000;
	byte2=read2+1;	
	//_delay(5000);
}
