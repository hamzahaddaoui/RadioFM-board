#include <htc.h>
#pragma config OSC=IRCIO7 
#pragma config WDT=OFF, PBADEN=OFF, MCLRE=ON, DEBUG=ON, LVP=OFF
#define _XTAL_FREQ 8MHZ 										//definizione necessaria alla <delay.c>
#define FREQMHZ 8												//per i2c.c
#include "i2c.c"
#include "TEA5767.c"
//#include "EEPROM.c"

/****************************************************************
CODICI RELATIVI ALLE VARIE POSSIBILI INTERAZIONI CON I 2 TASTI
****************************************************************/
#define bothButtons 	0x10
#define button1Long  	0x11
#define button1Short	0x12
#define button2Long		0x13
#define button2Short 	0x14

void setup(void);
char detectButton(void);
void functionsRoutine(void);

unsigned char function=0;	//Memorizza il codice relativo alla tipologia di interazione
bit smode;					//Search MODE attiva? 1 - SI , 0 - NO
bit status; 				//Radio attiva? 1 - SI , 0 - NO
					
void main(){
	unsigned char prevFunction;
	setup();
	while(1){
		while(detectButton() == 0);
		functionsRoutine();
	}
}

/********************************************
*  FUNZIONE SETUP							*
*  Settaggio parametri base.				*
*********************************************/
void setup(void){
	ADCON1=0x0F;
	OpenI2C_StSpeed();
	OSCCON= 0b01110000;			//8MHZ
	TRISB =	0b11110011;			//RB2-RB3 OUTPUT
	RBPU = 1;					//Attivo PULL-UP su PORTB
	LATB0= 1;					//Set alto degli ingressi RB0-RB1
	LATB1= 1;
	TEA_setFreq(10250);
	TEA_cmd(HLSI,1);
	TEA_cmd(MS,1);
	TEA_cmd(SMUTE,1);
	TEA_cmd(HCC,1);
	TEA_cmd(HLSI,1);
	TEA_cmd(SNC,1);
	TEA_cmd(XTAL,1);
	TEA_cmd(SSL,1);
}

/********************************************
*  FUNZIONE functionsRoutine				*
*  Controlla la funzione invocata tramite 	*
*  i tasti, e ne svolge le istruzioni 		*
*  relative									*
*********************************************/
void functionsRoutine(void){
	switch(function){
		case 0x10:								//bothButtons -> SPEGNI/ACCENDI RADIO
			status^=1;
			TEA_cmd(STBY,status);
			break;
		case 0x11:								//button1Long -> SMODE ON/OFF
			smode^=1;
			break;
		case 0x12:								//button1Short -> CANALE PRECEDENTE
			if (smode){
				TEA_setFreq(0);
			} 
			else{
				TEA_setFreq(8830);
			}
			break;
		case 0x13:								//button2Long -> SALVATAGGIO FREQ(Smode)  to do!
			break;
		case 0x14:								//button2Short -> CANALE SUCCESSIVO	
			if (smode){
				TEA_setFreq(1);
			}
			else{
				TEA_setFreq(10250);
			}
		default:
			break;	
		}
	function=0;
	_delay(150000);
	_delay(150000);
	_delay(150000);
}

/********************************************
*  FUNZIONE detectButton					*
*  Provvede a controllare lo stato dei		*
*  pulsanti, e rilevare le 5 possibili 		*
*  modalità di interazione					*
*********************************************/
char detectButton(void){
	char q;
	if (RB0 || RB1){
		_delay(100000);
		if(RB0&&RB1){							//PRESSIONE BREVE TASTO1 & TASTO2
			function=0x10;
		}
		else if (RB0){ 															
			for(q=0;q<4;q++) _delay(150000);
			if(RB0){							//PRESSIONE PROLUNGATA TASTO1
				function=0x11;
			}
			else{								//PRESSIONE BREVE TASTO1
				function=0x12;
			}											
		}	
		else if (RB1){
			for(q=0;q<4;q++) _delay(150000);
			if(RB1){							//PRESSIONE PROLUNGATA TASTO2
				function=0x13;
			}
			else{								//PRESSIONE BREVE TASTO2
				function=0x14;
			}
		}
		else{
			function=0;	
		} 
	}
	else{
		function=0;	
	} 
	return function;
}

