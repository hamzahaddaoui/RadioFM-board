/*libreria EEPROM v1.0 
* Autore: Hamza Haddaoui
* PIC18F4580
* 
*/
unsigned char EEPROM_read(unsigned char indirizzo){
	unsigned char dato;
	EEADR= 	indirizzo;     	 			//Scrivo sul registro EEADR, l'indirizzo relativo alla cella di memoria che voglio leggere
	EECON1=	0b00000001;					//Accesso a EEPROM memory, data memory, inizializzo lettura da EEPROM
	dato= 	EEDATA;                     //Leggo il dato letto dal registro EEDATA
	return dato;    					//Ritorno il dato alla funzione principale
}

bit intStat;						//Boolean che memorizza lo stato degli interrupt (se sono attivi o no)
void EEPROM_write(unsigned char indirizzo,unsigned char dato){
	EEADR=  indirizzo;      			//Scrivo sul registro EEADR, l'indirizzo relativo alla cella di memoria da cui voglio leggere
	EEDATA= dato;						//Scrivo sul registro EEDATA, il dato che voglio scrivere in memoria
	EECON1=	0b00000010;					//Accesso a EEPROM memory, data memory, inizializzo scrittura su EEPROM
	intStat = GIE;						//Memorizzo lo stato di GIE (Global interrupt enable)
	GIE = 0;                            //Disabilito gli interrupt. Le istruzioni successive non devono MAI essere interrotte
	//sequenza necessaria per la scrittura su EEPROM (durata circa 2 ms)
	EECON2 = 0x55;						
	EECON2 = 0xAA;
	WR = 1;								//Elimina la cella di memoria puntata
	/************************************************/
	GIE=intStat;						//Riattivo gli interrupt (se prima attivi)
	while (!EEIF);						//Attendo il termine della scrittura (controllo flag di scrittura)
	EEIF= 0;                          	//Resetto la flag di scrittura
	//WREN= 1;
}
