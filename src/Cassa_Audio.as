opt subtitle "Microchip Technology Omniscient Code Generator v1.36 (Free mode) build 201601150325"

opt pagewidth 120

	opt lm

	processor	18F4580
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f4580.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_detectButton
	FNCALL	_main,_functionsRoutine
	FNCALL	_main,_setup
	FNCALL	_setup,_OpenI2C_StSpeed
	FNCALL	_setup,_TEA_cmd
	FNCALL	_setup,_TEA_setFreq
	FNCALL	_functionsRoutine,_TEA_cmd
	FNCALL	_functionsRoutine,_TEA_setFreq
	FNCALL	_TEA_setFreq,_TEA_readData
	FNCALL	_TEA_setFreq,_TEA_writeData
	FNCALL	_TEA_setFreq,___lmul
	FNCALL	_TEA_readData,_IdleI2C
	FNCALL	_TEA_readData,_ReadI2C
	FNCALL	_TEA_readData,_WriteI2C
	FNCALL	_TEA_cmd,_TEA_writeData
	FNCALL	_TEA_writeData,_IdleI2C
	FNCALL	_TEA_writeData,_WriteI2C
	FNCALL	_WriteI2C,_IdleI2C
	FNROOT	_main
	global	_byte1
	global	_byte2
	global	_byte3
	global	_byte4
	global	_function
	global	_smode
	global	_status
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_SSPCON1bits
_SSPCON1bits	set	0xFC6
	global	_SSPCON2
_SSPCON2	set	0xFC5
	global	_SSPCON2bits
_SSPCON2bits	set	0xFC5
	global	_SSPSTAT
_SSPSTAT	set	0xFC7
	global	_SSPSTATbits
_SSPSTATbits	set	0xFC7
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_LATB0
_LATB0	set	0x7C50
	global	_LATB1
_LATB1	set	0x7C51
	global	_RB0
_RB0	set	0x7C08
	global	_RB1
_RB1	set	0x7C09
	global	_RBPU
_RBPU	set	0x7F8F
; #config settings
global __CFG_OSC$IRCIO7
__CFG_OSC$IRCIO7 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_DEBUG$ON
__CFG_DEBUG$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"Cassa_Audio.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMRAM,class=COMRAM,bit,space=1,noexec
global __pbitbssCOMRAM
__pbitbssCOMRAM:
	global	_smode
_smode:
       ds      1
	global	_status
_status:
       ds      1
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_byte1
_byte1:
       ds      1
	global	_byte2
_byte2:
       ds      1
	global	_byte3
_byte3:
       ds      1
	global	_byte4
_byte4:
       ds      1
	global	_function
_function:
       ds      1
	file	"Cassa_Audio.as"
	line	#
psect	cinit
; Clear objects allocated to BITCOMRAM (1 bytes)
	global __pbitbssCOMRAM
clrf	(__pbitbssCOMRAM/8+0)&0xffh,c
; Clear objects allocated to COMRAM (5 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_TEA_writeData:	; 1 bytes @ 0x0
?_TEA_readData:	; 1 bytes @ 0x0
?_setup:	; 1 bytes @ 0x0
?_detectButton:	; 1 bytes @ 0x0
??_detectButton:	; 1 bytes @ 0x0
?_functionsRoutine:	; 1 bytes @ 0x0
?_IdleI2C:	; 1 bytes @ 0x0
??_IdleI2C:	; 1 bytes @ 0x0
?_OpenI2C_StSpeed:	; 1 bytes @ 0x0
??_OpenI2C_StSpeed:	; 1 bytes @ 0x0
?_ReadI2C:	; 1 bytes @ 0x0
??_ReadI2C:	; 1 bytes @ 0x0
?_WriteI2C:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds   1
??_WriteI2C:	; 1 bytes @ 0x1
	global	WriteI2C@data_out
WriteI2C@data_out:	; 1 bytes @ 0x1
	global	detectButton@q
detectButton@q:	; 1 bytes @ 0x1
	ds   1
??_TEA_writeData:	; 1 bytes @ 0x2
??_TEA_readData:	; 1 bytes @ 0x2
?_TEA_cmd:	; 1 bytes @ 0x2
	global	TEA_cmd@stat
TEA_cmd@stat:	; 1 bytes @ 0x2
	ds   1
??_TEA_cmd:	; 1 bytes @ 0x3
	global	TEA_cmd@command
TEA_cmd@command:	; 1 bytes @ 0x3
	global	TEA_readData@read3
TEA_readData@read3:	; 1 bytes @ 0x3
	ds   1
	global	TEA_readData@read4
TEA_readData@read4:	; 1 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds   1
	global	TEA_readData@read5
TEA_readData@read5:	; 1 bytes @ 0x5
	ds   1
	global	TEA_readData@read1
TEA_readData@read1:	; 1 bytes @ 0x6
	ds   1
	global	TEA_readData@read2
TEA_readData@read2:	; 1 bytes @ 0x7
	ds   1
??___lmul:	; 1 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds   4
?_TEA_setFreq:	; 1 bytes @ 0xC
	global	TEA_setFreq@freq
TEA_setFreq@freq:	; 2 bytes @ 0xC
	ds   2
??_TEA_setFreq:	; 1 bytes @ 0xE
	ds   4
	global	TEA_setFreq@rawFreq
TEA_setFreq@rawFreq:	; 4 bytes @ 0x12
	ds   4
??_setup:	; 1 bytes @ 0x16
??_functionsRoutine:	; 1 bytes @ 0x16
	ds   1
??_main:	; 1 bytes @ 0x17
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     23      29
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           244      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_functionsRoutine
;!    _setup->_TEA_setFreq
;!    _functionsRoutine->_TEA_setFreq
;!    _TEA_setFreq->___lmul
;!    _TEA_readData->_WriteI2C
;!    _TEA_writeData->_WriteI2C
;!    _WriteI2C->_IdleI2C
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    2652
;!                       _detectButton
;!                   _functionsRoutine
;!                              _setup
;! ---------------------------------------------------------------------------------
;! (1) _setup                                                0     0      0    1296
;!                    _OpenI2C_StSpeed
;!                            _TEA_cmd
;!                        _TEA_setFreq
;! ---------------------------------------------------------------------------------
;! (2) _OpenI2C_StSpeed                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _functionsRoutine                                     1     1      0    1296
;!                                             22 COMRAM     1     1      0
;!                            _TEA_cmd
;!                        _TEA_setFreq
;! ---------------------------------------------------------------------------------
;! (2) _TEA_setFreq                                         10     8      2     696
;!                                             12 COMRAM    10     8      2
;!                       _TEA_readData
;!                      _TEA_writeData
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (3) ___lmul                                              12     4      8     238
;!                                              0 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (3) _TEA_readData                                         6     6      0      45
;!                                              2 COMRAM     6     6      0
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (4) _ReadI2C                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _TEA_cmd                                              2     1      1     600
;!                                              2 COMRAM     2     1      1
;!                      _TEA_writeData
;! ---------------------------------------------------------------------------------
;! (3) _TEA_writeData                                        0     0      0      15
;!                            _IdleI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (4) _WriteI2C                                             1     1      0      15
;!                                              1 COMRAM     1     1      0
;!                            _IdleI2C
;! ---------------------------------------------------------------------------------
;! (5) _IdleI2C                                              1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _detectButton                                         2     2      0      60
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _detectButton
;!   _functionsRoutine
;!     _TEA_cmd
;!       _TEA_writeData
;!         _IdleI2C
;!         _WriteI2C
;!           _IdleI2C
;!     _TEA_setFreq
;!       _TEA_readData
;!         _IdleI2C
;!         _ReadI2C
;!         _WriteI2C
;!           _IdleI2C
;!       _TEA_writeData
;!         _IdleI2C
;!         _WriteI2C
;!           _IdleI2C
;!       ___lmul
;!   _setup
;!     _OpenI2C_StSpeed
;!     _TEA_cmd
;!       _TEA_writeData
;!         _IdleI2C
;!         _WriteI2C
;!           _IdleI2C
;!     _TEA_setFreq
;!       _TEA_readData
;!         _IdleI2C
;!         _ReadI2C
;!         _WriteI2C
;!           _IdleI2C
;!       _TEA_writeData
;!         _IdleI2C
;!         _WriteI2C
;!           _IdleI2C
;!       ___lmul
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5F3      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK5            F4      0       0      14        0.0%
;!BANK5               F4      0       0      15        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5F      0       1       0        1.1%
;!COMRAM              5F     17      1D       1       30.5%
;!BITSFR_3             0      0       0      40        0.0%
;!SFR_3                0      0       0      40        0.0%
;!BITSFR_2             0      0       0      40        0.0%
;!SFR_2                0      0       0      40        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      1D       3        0.0%
;!DATA                 0      0      1D      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  prevFunction    1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_detectButton
;;		_functionsRoutine
;;		_setup
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
	line	27
global __ptext0
__ptext0:
psect	text0
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 26
	line	29
	
l1224:
;progetto.c: 28: unsigned char prevFunction;
;progetto.c: 29: setup();
	call	_setup	;wreg free
	goto	l1226
	line	30
;progetto.c: 30: while(1){
	
l151:
	line	31
;progetto.c: 31: while(detectButton() == 0);
	goto	l1226
	
l153:
	goto	l1226
	
l152:
	
l1226:
	call	_detectButton	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u481
	goto	u480
u481:
	goto	l1226
u480:
	goto	l1228
	
l154:
	line	32
	
l1228:
;progetto.c: 32: functionsRoutine();
	call	_functionsRoutine	;wreg free
	goto	l1226
	line	33
	
l155:
	line	30
	goto	l1226
	
l156:
	line	34
	
l157:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_setup

;; *************** function _setup *****************
;; Defined at:
;;		line 40 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_OpenI2C_StSpeed
;;		_TEA_cmd
;;		_TEA_setFreq
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	40
global __ptext1
__ptext1:
psect	text1
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
	line	40
	global	__size_of_setup
	__size_of_setup	equ	__end_of_setup-_setup
	
_setup:
;incstack = 0
	opt	stack 26
	line	41
	
l1168:
;progetto.c: 41: ADCON1=0x0F;
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	42
	
l1170:
;progetto.c: 42: OpenI2C_StSpeed();
	call	_OpenI2C_StSpeed	;wreg free
	line	43
	
l1172:
;progetto.c: 43: OSCCON= 0b01110000;
	movlw	low(070h)
	movwf	((c:4051)),c	;volatile
	line	44
	
l1174:
;progetto.c: 44: TRISB = 0b11110011;
	movlw	low(0F3h)
	movwf	((c:3987)),c	;volatile
	line	45
	
l1176:
;progetto.c: 45: RBPU = 1;
	bsf	c:(32655/8),(32655)&7	;volatile
	line	46
	
l1178:
;progetto.c: 46: LATB0= 1;
	bsf	c:(31824/8),(31824)&7	;volatile
	line	47
	
l1180:
;progetto.c: 47: LATB1= 1;
	bsf	c:(31825/8),(31825)&7	;volatile
	line	48
	
l1182:
;progetto.c: 48: TEA_setFreq(10250);
	movlw	high(0280Ah)
	movwf	((c:TEA_setFreq@freq+1)),c
	movlw	low(0280Ah)
	movwf	((c:TEA_setFreq@freq)),c
	call	_TEA_setFreq	;wreg free
	line	49
	
l1184:
;progetto.c: 49: TEA_cmd(0x02,1);
	movlw	low(01h)
	movwf	((c:TEA_cmd@stat)),c
	movlw	(02h)&0ffh
	
	call	_TEA_cmd
	line	50
	
l1186:
;progetto.c: 50: TEA_cmd(0x03,1);
	movlw	low(01h)
	movwf	((c:TEA_cmd@stat)),c
	movlw	(03h)&0ffh
	
	call	_TEA_cmd
	line	51
	
l1188:
;progetto.c: 51: TEA_cmd(0x04,1);
	movlw	low(01h)
	movwf	((c:TEA_cmd@stat)),c
	movlw	(04h)&0ffh
	
	call	_TEA_cmd
	line	52
	
l1190:
;progetto.c: 52: TEA_cmd(0x05,1);
	movlw	low(01h)
	movwf	((c:TEA_cmd@stat)),c
	movlw	(05h)&0ffh
	
	call	_TEA_cmd
	line	53
	
l1192:
;progetto.c: 53: TEA_cmd(0x02,1);
	movlw	low(01h)
	movwf	((c:TEA_cmd@stat)),c
	movlw	(02h)&0ffh
	
	call	_TEA_cmd
	line	54
	
l1194:
;progetto.c: 54: TEA_cmd(0x06,1);
	movlw	low(01h)
	movwf	((c:TEA_cmd@stat)),c
	movlw	(06h)&0ffh
	
	call	_TEA_cmd
	line	55
	
l1196:
;progetto.c: 55: TEA_cmd(0x08,1);
	movlw	low(01h)
	movwf	((c:TEA_cmd@stat)),c
	movlw	(08h)&0ffh
	
	call	_TEA_cmd
	line	56
	
l1198:
;progetto.c: 56: TEA_cmd(0x09,1);
	movlw	low(01h)
	movwf	((c:TEA_cmd@stat)),c
	movlw	(09h)&0ffh
	
	call	_TEA_cmd
	line	57
	
l160:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_setup
	__end_of_setup:
	signat	_setup,89
	global	_OpenI2C_StSpeed

;; *************** function _OpenI2C_StSpeed *****************
;; Defined at:
;;		line 108 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
	line	108
global __ptext2
__ptext2:
psect	text2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
	line	108
	global	__size_of_OpenI2C_StSpeed
	__size_of_OpenI2C_StSpeed	equ	__end_of_OpenI2C_StSpeed-_OpenI2C_StSpeed
	
_OpenI2C_StSpeed:
;incstack = 0
	opt	stack 29
	line	110
	
l886:
;i2c.c: 110: SSPSTAT &= 0x3F;
	movlw	(03Fh)&0ffh
	andwf	((c:4039)),c	;volatile
	line	111
	
l888:
;i2c.c: 111: SSPCON1 = 0x08;
	movlw	low(08h)
	movwf	((c:4038)),c	;volatile
	line	112
	
l890:
;i2c.c: 112: SSPCON2 = 0x00;
	movlw	low(0)
	movwf	((c:4037)),c	;volatile
	line	113
	
l892:
;i2c.c: 113: SSPSTAT |= 0x80;
	bsf	(0+(7/8)+(c:4039)),c,(7)&7	;volatile
	line	117
	
l894:
;i2c.c: 117: SSPADD=9;
	movlw	low(09h)
	movwf	((c:4040)),c	;volatile
	line	121
	
l896:
;i2c.c: 121: SSPADD=19;
	movlw	low(013h)
	movwf	((c:4040)),c	;volatile
	line	128
	
l898:
;i2c.c: 128: TRISCbits.TRISC3 = 1;
	bsf	((c:3988)),c,3	;volatile
	line	129
	
l900:
;i2c.c: 129: TRISCbits.TRISC4 = 1;
	bsf	((c:3988)),c,4	;volatile
	line	130
	
l902:
;i2c.c: 130: SSPCON1 |= 0x20;
	bsf	(0+(5/8)+(c:4038)),c,(5)&7	;volatile
	line	132
	
l58:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_OpenI2C_StSpeed
	__end_of_OpenI2C_StSpeed:
	signat	_OpenI2C_StSpeed,89
	global	_functionsRoutine

;; *************** function _functionsRoutine *****************
;; Defined at:
;;		line 65 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_TEA_cmd
;;		_TEA_setFreq
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
	line	65
global __ptext3
__ptext3:
psect	text3
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
	line	65
	global	__size_of_functionsRoutine
	__size_of_functionsRoutine	equ	__end_of_functionsRoutine-_functionsRoutine
	
_functionsRoutine:
;incstack = 0
	opt	stack 26
	line	66
	
l1200:
;progetto.c: 66: switch(function){
	goto	l1214
	line	67
;progetto.c: 67: case 0x10:
	
l164:
	line	68
;progetto.c: 68: status^=1;
	btg	(_status/8),c,(_status)&7
	line	69
	
l1202:
;progetto.c: 69: TEA_cmd(0x07,status);
	movlw	0
	btfsc	(_status/8),c,(_status)&7
	movlw	1
	movwf	((c:TEA_cmd@stat)),c
	movlw	(07h)&0ffh
	
	call	_TEA_cmd
	line	70
;progetto.c: 70: break;
	goto	l1216
	line	71
;progetto.c: 71: case 0x11:
	
l166:
	line	72
;progetto.c: 72: smode^=1;
	btg	(_smode/8),c,(_smode)&7
	line	73
;progetto.c: 73: break;
	goto	l1216
	line	74
;progetto.c: 74: case 0x12:
	
l167:
	line	75
;progetto.c: 75: if (smode){
	btfss	(_smode/8),c,(_smode)&7
	goto	u461
	goto	u460
u461:
	goto	l1206
u460:
	line	76
	
l1204:
;progetto.c: 76: TEA_setFreq(0);
	movlw	high(0)
	movwf	((c:TEA_setFreq@freq+1)),c
	movlw	low(0)
	movwf	((c:TEA_setFreq@freq)),c
	call	_TEA_setFreq	;wreg free
	line	77
;progetto.c: 77: }
	goto	l1216
	line	78
	
l168:
	line	79
	
l1206:
;progetto.c: 78: else{
;progetto.c: 79: TEA_setFreq(8830);
	movlw	high(0227Eh)
	movwf	((c:TEA_setFreq@freq+1)),c
	movlw	low(0227Eh)
	movwf	((c:TEA_setFreq@freq)),c
	call	_TEA_setFreq	;wreg free
	goto	l1216
	line	80
	
l169:
	line	81
;progetto.c: 80: }
;progetto.c: 81: break;
	goto	l1216
	line	82
;progetto.c: 82: case 0x13:
	
l170:
	line	83
;progetto.c: 83: break;
	goto	l1216
	line	84
;progetto.c: 84: case 0x14:
	
l171:
	line	85
;progetto.c: 85: if (smode){
	btfss	(_smode/8),c,(_smode)&7
	goto	u471
	goto	u470
u471:
	goto	l1210
u470:
	line	86
	
l1208:
;progetto.c: 86: TEA_setFreq(1);
	movlw	high(01h)
	movwf	((c:TEA_setFreq@freq+1)),c
	movlw	low(01h)
	movwf	((c:TEA_setFreq@freq)),c
	call	_TEA_setFreq	;wreg free
	line	87
;progetto.c: 87: }
	goto	l1216
	line	88
	
l172:
	line	89
	
l1210:
;progetto.c: 88: else{
;progetto.c: 89: TEA_setFreq(10250);
	movlw	high(0280Ah)
	movwf	((c:TEA_setFreq@freq+1)),c
	movlw	low(0280Ah)
	movwf	((c:TEA_setFreq@freq)),c
	call	_TEA_setFreq	;wreg free
	goto	l1216
	line	90
	
l173:
	goto	l1216
	line	91
;progetto.c: 90: }
;progetto.c: 91: default:
	
l174:
	line	92
;progetto.c: 92: break;
	goto	l1216
	line	93
	
l1212:
;progetto.c: 93: }
	goto	l1216
	line	66
	
l163:
	
l1214:
	movf	((c:_function)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 16 to 20
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	16^0	; case 16
	skipnz
	goto	l164
	xorlw	17^16	; case 17
	skipnz
	goto	l166
	xorlw	18^17	; case 18
	skipnz
	goto	l167
	xorlw	19^18	; case 19
	skipnz
	goto	l1216
	xorlw	20^19	; case 20
	skipnz
	goto	l171
	goto	l1216

	line	93
	
l165:
	line	94
	
l1216:
;progetto.c: 94: function=0;
	movlw	low(0)
	movwf	((c:_function)),c
	line	95
	
l1218:
;progetto.c: 95: _delay(150000);
	movlw	195
movwf	(??_functionsRoutine+0+0)&0ffh,c,f
	movlw	205
u497:
decfsz	wreg,f
	goto	u497
	decfsz	(??_functionsRoutine+0+0)&0ffh,c,f
	goto	u497
	nop

	line	96
	
l1220:
;progetto.c: 96: _delay(150000);
	movlw	195
movwf	(??_functionsRoutine+0+0)&0ffh,c,f
	movlw	205
u507:
decfsz	wreg,f
	goto	u507
	decfsz	(??_functionsRoutine+0+0)&0ffh,c,f
	goto	u507
	nop

	line	97
	
l1222:
;progetto.c: 97: _delay(150000);
	movlw	195
movwf	(??_functionsRoutine+0+0)&0ffh,c,f
	movlw	205
u517:
decfsz	wreg,f
	goto	u517
	decfsz	(??_functionsRoutine+0+0)&0ffh,c,f
	goto	u517
	nop

	line	98
	
l175:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_functionsRoutine
	__end_of_functionsRoutine:
	signat	_functionsRoutine,89
	global	_TEA_setFreq

;; *************** function _TEA_setFreq *****************
;; Defined at:
;;		line 64 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
;; Parameters:    Size  Location     Type
;;  freq            2   12[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  rawFreq         4   18[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TEA_readData
;;		_TEA_writeData
;;		___lmul
;; This function is called by:
;;		_setup
;;		_functionsRoutine
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
	line	64
global __ptext4
__ptext4:
psect	text4
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
	line	64
	global	__size_of_TEA_setFreq
	__size_of_TEA_setFreq	equ	__end_of_TEA_setFreq-_TEA_setFreq
	
_TEA_setFreq:
;incstack = 0
	opt	stack 26
	line	65
	
l1134:
;TEA5767.c: 65: unsigned long rawFreq=0;
	movlw	low(0)
	movwf	((c:TEA_setFreq@rawFreq)),c
	movlw	high(0)
	movwf	((c:TEA_setFreq@rawFreq+1)),c
	movlw	low highword(0)
	movwf	((c:TEA_setFreq@rawFreq+2)),c
	movlw	high highword(0)
	movwf	((c:TEA_setFreq@rawFreq+3)),c
	line	66
	
l1136:
;TEA5767.c: 66: if (freq==1){
		decf	((c:TEA_setFreq@freq)),c,w
iorwf	((c:TEA_setFreq@freq+1)),c,w
	btfss	status,2
	goto	u421
	goto	u420

u421:
	goto	l1142
u420:
	line	67
	
l1138:
;TEA5767.c: 67: byte3|=0b10000000;
	bsf	(0+(7/8)+(c:_byte3)),c,(7)&7
	line	68
	
l1140:
;TEA5767.c: 68: TEA_readData();
	call	_TEA_readData	;wreg free
	line	69
;TEA5767.c: 69: }
	goto	l1166
	line	70
	
l105:
	
l1142:
;TEA5767.c: 70: else if(freq==0){
	movf	((c:TEA_setFreq@freq)),c,w
iorwf	((c:TEA_setFreq@freq+1)),c,w
	btfss	status,2
	goto	u431
	goto	u430

u431:
	goto	l1148
u430:
	line	71
	
l1144:
;TEA5767.c: 71: byte3&=0b01111111;
	bcf	(0+(7/8)+(c:_byte3)),c,(7)&7
	line	72
	
l1146:
;TEA5767.c: 72: TEA_readData();
	call	_TEA_readData	;wreg free
	line	73
;TEA5767.c: 73: }
	goto	l1166
	line	74
	
l107:
	line	75
	
l1148:
;TEA5767.c: 74: else{
;TEA5767.c: 75: rawFreq=freq;
	movff	(c:TEA_setFreq@freq),(c:TEA_setFreq@rawFreq)
	movff	(c:TEA_setFreq@freq+1),(c:TEA_setFreq@rawFreq+1)
	movlw	0
	btfsc	((c:TEA_setFreq@rawFreq+1)),c,7
	movlw	-1
	movwf	((c:TEA_setFreq@rawFreq+2)),c
	movwf	((c:TEA_setFreq@rawFreq+3)),c
	line	76
	
l1150:
;TEA5767.c: 76: rawFreq=rawFreq*10000;
	movff	(c:TEA_setFreq@rawFreq),(c:___lmul@multiplier)
	movff	(c:TEA_setFreq@rawFreq+1),(c:___lmul@multiplier+1)
	movff	(c:TEA_setFreq@rawFreq+2),(c:___lmul@multiplier+2)
	movff	(c:TEA_setFreq@rawFreq+3),(c:___lmul@multiplier+3)
	movlw	low(02710h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(02710h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(02710h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(02710h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:TEA_setFreq@rawFreq)
	movff	1+?___lmul,(c:TEA_setFreq@rawFreq+1)
	movff	2+?___lmul,(c:TEA_setFreq@rawFreq+2)
	movff	3+?___lmul,(c:TEA_setFreq@rawFreq+3)
	
	line	77
	
l1152:
;TEA5767.c: 77: rawFreq+=225000;
	movlw	0E8h
	addwf	((c:TEA_setFreq@rawFreq)),c
	movlw	06Eh
	addwfc	((c:TEA_setFreq@rawFreq+1)),c
	movlw	03h
	addwfc	((c:TEA_setFreq@rawFreq+2)),c
	movlw	0
	addwfc	((c:TEA_setFreq@rawFreq+3)),c
	line	78
	
l1154:
;TEA5767.c: 78: rawFreq=rawFreq*4;
	movff	(c:TEA_setFreq@rawFreq),??_TEA_setFreq+0+0
	movff	(c:TEA_setFreq@rawFreq+1),??_TEA_setFreq+0+0+1
	movff	(c:TEA_setFreq@rawFreq+2),??_TEA_setFreq+0+0+2
	movff	(c:TEA_setFreq@rawFreq+3),??_TEA_setFreq+0+0+3
	movlw	02h
u445:
	bcf	status,0
	rlcf	(??_TEA_setFreq+0+0),c
	rlcf	(??_TEA_setFreq+0+1),c
	rlcf	(??_TEA_setFreq+0+2),c
	rlcf	(??_TEA_setFreq+0+3),c
	decfsz	wreg
	goto	u445
	movff	??_TEA_setFreq+0+0,(c:TEA_setFreq@rawFreq)
	movff	??_TEA_setFreq+0+1,(c:TEA_setFreq@rawFreq+1)
	movff	??_TEA_setFreq+0+2,(c:TEA_setFreq@rawFreq+2)
	movff	??_TEA_setFreq+0+3,(c:TEA_setFreq@rawFreq+3)
	line	79
	
l1156:
;TEA5767.c: 79: rawFreq/=32768;
	movlw	0Fh
	movwf	(??_TEA_setFreq+0+0)&0ffh,c
u455:
	bcf	status,0
	rrcf	((c:TEA_setFreq@rawFreq+3)),c
	rrcf	((c:TEA_setFreq@rawFreq+2)),c
	rrcf	((c:TEA_setFreq@rawFreq+1)),c
	rrcf	((c:TEA_setFreq@rawFreq)),c
	decfsz	(??_TEA_setFreq+0+0)&0ffh,c
	goto	u455

	line	80
	
l1158:
;TEA5767.c: 80: freq=rawFreq;
	movff	(c:TEA_setFreq@rawFreq),(c:TEA_setFreq@freq)
	movff	(c:TEA_setFreq@rawFreq+1),(c:TEA_setFreq@freq+1)
	line	81
	
l1160:
;TEA5767.c: 81: byte1=0;
	movlw	low(0)
	movwf	((c:_byte1)),c
	line	82
	
l1162:
;TEA5767.c: 82: byte1=freq>>8;
	movf	((c:TEA_setFreq@freq+1)),c,w
	movwf	((c:_byte1)),c
	line	83
	
l1164:
;TEA5767.c: 83: byte2=freq;
	movff	(c:TEA_setFreq@freq),(c:_byte2)
	goto	l1166
	line	84
	
l108:
	goto	l1166
	
l106:
	line	85
	
l1166:
;TEA5767.c: 84: }
;TEA5767.c: 85: TEA_writeData();
	call	_TEA_writeData	;wreg free
	line	86
	
l109:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_TEA_setFreq
	__end_of_TEA_setFreq:
	signat	_TEA_setFreq,4217
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMRAM] unsigned long 
;;  multiplicand    4    4[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TEA_setFreq
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\Umul32.c"
	line	15
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:
;incstack = 0
	opt	stack 28
	line	119
	
l1086:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l1088
	line	120
	
l208:
	line	121
	
l1088:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u401
	goto	u400
u401:
	goto	l1092
u400:
	line	122
	
l1090:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l1092
	
l209:
	line	123
	
l1092:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l1094:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3)),c
	rrcf	((c:___lmul@multiplier+2)),c
	rrcf	((c:___lmul@multiplier+1)),c
	rrcf	((c:___lmul@multiplier)),c
	line	125
	movf	((c:___lmul@multiplier)),c,w
iorwf	((c:___lmul@multiplier+1)),c,w
iorwf	((c:___lmul@multiplier+2)),c,w
iorwf	((c:___lmul@multiplier+3)),c,w
	btfss	status,2
	goto	u411
	goto	u410

u411:
	goto	l1088
u410:
	
l210:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l211:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_TEA_readData

;; *************** function _TEA_readData *****************
;; Defined at:
;;		line 103 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read2           1    7[COMRAM] unsigned char 
;;  read1           1    6[COMRAM] unsigned char 
;;  read5           1    5[COMRAM] unsigned char 
;;  read4           1    4[COMRAM] unsigned char 
;;  read3           1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_IdleI2C
;;		_ReadI2C
;;		_WriteI2C
;; This function is called by:
;;		_TEA_setFreq
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
	line	103
global __ptext6
__ptext6:
psect	text6
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
	line	103
	global	__size_of_TEA_readData
	__size_of_TEA_readData	equ	__end_of_TEA_readData-_TEA_readData
	
_TEA_readData:
;incstack = 0
	opt	stack 26
	line	105
	
l836:
;TEA5767.c: 104: unsigned char read1, read2,read3,read4,read5;
;TEA5767.c: 105: read1=0;
	movlw	low(0)
	movwf	((c:TEA_readData@read1)),c
	line	106
;TEA5767.c: 106: read2=0;
	movlw	low(0)
	movwf	((c:TEA_readData@read2)),c
	line	107
	
l838:
;TEA5767.c: 107: IdleI2C();
	call	_IdleI2C	;wreg free
	line	108
	
l840:
;TEA5767.c: 108: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l121
	
l122:
	
l121:
	btfsc	((c:4037)),c,0	;volatile
	goto	u121
	goto	u120
u121:
	goto	l121
u120:
	goto	l842
	
l123:
	line	109
	
l842:
;TEA5767.c: 109: WriteI2C(0xC1);
	movlw	(0C1h)&0ffh
	
	call	_WriteI2C
	line	110
;TEA5767.c: 110: read1=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:TEA_readData@read1)),c
	line	111
	
l844:
;TEA5767.c: 111: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l846:
	bsf	((c:4037)),c,4	;volatile
	goto	l124
	
l125:
	
l124:
	btfsc	((c:4037)),c,4	;volatile
	goto	u131
	goto	u130
u131:
	goto	l124
u130:
	goto	l848
	
l126:
	line	112
	
l848:
;TEA5767.c: 112: read2=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:TEA_readData@read2)),c
	line	113
	
l850:
;TEA5767.c: 113: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l852:
	bsf	((c:4037)),c,4	;volatile
	goto	l127
	
l128:
	
l127:
	btfsc	((c:4037)),c,4	;volatile
	goto	u141
	goto	u140
u141:
	goto	l127
u140:
	goto	l854
	
l129:
	line	114
	
l854:
;TEA5767.c: 114: read3=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:TEA_readData@read3)),c
	line	115
	
l856:
;TEA5767.c: 115: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l858:
	bsf	((c:4037)),c,4	;volatile
	goto	l130
	
l131:
	
l130:
	btfsc	((c:4037)),c,4	;volatile
	goto	u151
	goto	u150
u151:
	goto	l130
u150:
	goto	l860
	
l132:
	line	116
	
l860:
;TEA5767.c: 116: read4=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:TEA_readData@read4)),c
	line	117
	
l862:
;TEA5767.c: 117: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l864:
	bsf	((c:4037)),c,4	;volatile
	goto	l133
	
l134:
	
l133:
	btfsc	((c:4037)),c,4	;volatile
	goto	u161
	goto	u160
u161:
	goto	l133
u160:
	goto	l866
	
l135:
	line	118
	
l866:
;TEA5767.c: 118: read5=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:TEA_readData@read5)),c
	line	119
	
l868:
;TEA5767.c: 119: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l870:
	bsf	((c:4037)),c,4	;volatile
	goto	l136
	
l137:
	
l136:
	btfsc	((c:4037)),c,4	;volatile
	goto	u171
	goto	u170
u171:
	goto	l136
u170:
	
l138:
	line	120
;TEA5767.c: 120: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l139
	
l140:
	
l139:
	btfsc	((c:4037)),c,2	;volatile
	goto	u181
	goto	u180
u181:
	goto	l139
u180:
	goto	l872
	
l141:
	line	121
	
l872:
;TEA5767.c: 121: byte1=read1&0b00111111|0b01000000;
	movf	((c:TEA_readData@read1)),c,w
	andlw	low(03Fh)
	iorlw	low(040h)
	movwf	((c:_byte1)),c
	line	122
;TEA5767.c: 122: byte2=read2+1;
	incf	((c:TEA_readData@read2)),c,w
	movwf	((c:_byte2)),c
	line	123
	
l874:
;TEA5767.c: 123: _delay(5000);
	movlw	7
movwf	(??_TEA_readData+0+0)&0ffh,c,f
	movlw	125
u527:
decfsz	wreg,f
	goto	u527
	decfsz	(??_TEA_readData+0+0)&0ffh,c,f
	goto	u527
	nop

	line	124
	
l142:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_TEA_readData
	__end_of_TEA_readData:
	signat	_TEA_readData,89
	global	_ReadI2C

;; *************** function _ReadI2C *****************
;; Defined at:
;;		line 142 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TEA_readData
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
	line	142
global __ptext7
__ptext7:
psect	text7
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
	line	142
	global	__size_of_ReadI2C
	__size_of_ReadI2C	equ	__end_of_ReadI2C-_ReadI2C
	
_ReadI2C:
;incstack = 0
	opt	stack 27
	line	144
	
l800:
;i2c.c: 144: if( ((SSPCON1&0x0F)==0x08) || ((SSPCON1&0x0F)==0x0B) )
	movf	((c:4038)),c,w	;volatile
	andlw	low(0Fh)
	xorlw	08h
	btfsc	status,2
	goto	u31
	goto	u30
u31:
	goto	l63
u30:
	
l802:
	movf	((c:4038)),c,w	;volatile
	andlw	low(0Fh)
	xorlw	0Bh
	btfss	status,2
	goto	u41
	goto	u40
u41:
	goto	l64
u40:
	
l63:
	line	145
;i2c.c: 145: SSPCON2bits.RCEN = 1;
	bsf	((c:4037)),c,3	;volatile
	goto	l64
	
l61:
	line	146
;i2c.c: 146: while ( !SSPSTATbits.BF );
	goto	l64
	
l65:
	
l64:
	btfss	((c:4039)),c,0	;volatile
	goto	u51
	goto	u50
u51:
	goto	l64
u50:
	goto	l804
	
l66:
	line	147
	
l804:
;i2c.c: 147: return ( SSPBUF );
	movf	((c:4041)),c,w	;volatile
	goto	l67
	
l806:
	line	148
	
l67:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadI2C
	__end_of_ReadI2C:
	signat	_ReadI2C,89
	global	_TEA_cmd

;; *************** function _TEA_cmd *****************
;; Defined at:
;;		line 33 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;;  stat            1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TEA_writeData
;; This function is called by:
;;		_setup
;;		_functionsRoutine
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
	line	33
global __ptext8
__ptext8:
psect	text8
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
	line	33
	global	__size_of_TEA_cmd
	__size_of_TEA_cmd	equ	__end_of_TEA_cmd-_TEA_cmd
	
_TEA_cmd:
;incstack = 0
	opt	stack 26
;TEA_cmd@command stored from wreg
	movwf	((c:TEA_cmd@command)),c
	line	34
	
l1096:
;TEA5767.c: 34: switch (command){
	goto	l1130
	line	35
;TEA5767.c: 35: case 2:
	
l92:
	line	36
	
l1098:
;TEA5767.c: 36: byte3&=0b11101111; byte3|=stat<<4;
	bcf	(0+(4/8)+(c:_byte3)),c,(4)&7
	
l1100:
	swapf	((c:TEA_cmd@stat)),c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((c:_byte3)),c
	line	37
;TEA5767.c: 37: break;
	goto	l1132
	line	38
;TEA5767.c: 38: case 3:
	
l94:
	line	39
	
l1102:
;TEA5767.c: 39: byte3&=0b11110111; byte3|=stat<<3;
	bcf	(0+(3/8)+(c:_byte3)),c,(3)&7
	
l1104:
	swapf	((c:TEA_cmd@stat)),c,w
	rrncf	wreg
	andlw	(0ffh shl 3) & 0ffh
	iorwf	((c:_byte3)),c
	line	40
;TEA5767.c: 40: break;
	goto	l1132
	line	41
;TEA5767.c: 41: case 4:
	
l95:
	line	42
	
l1106:
;TEA5767.c: 42: byte4&=0b11110111; byte4|=stat<<3;
	bcf	(0+(3/8)+(c:_byte4)),c,(3)&7
	
l1108:
	swapf	((c:TEA_cmd@stat)),c,w
	rrncf	wreg
	andlw	(0ffh shl 3) & 0ffh
	iorwf	((c:_byte4)),c
	line	43
;TEA5767.c: 43: break;
	goto	l1132
	line	44
;TEA5767.c: 44: case 5:
	
l96:
	line	45
	
l1110:
;TEA5767.c: 45: byte4&=0b11111011; byte4|=stat<<2;
	bcf	(0+(2/8)+(c:_byte4)),c,(2)&7
	
l1112:
	rlncf	((c:TEA_cmd@stat)),c,w
	rlncf	wreg
	andlw	(0ffh shl 2) & 0ffh
	iorwf	((c:_byte4)),c
	line	46
;TEA5767.c: 46: break;
	goto	l1132
	line	47
;TEA5767.c: 47: case 6:
	
l97:
	line	48
	
l1114:
;TEA5767.c: 48: byte4&=0b11111101; byte4|=stat<<1;
	bcf	(0+(1/8)+(c:_byte4)),c,(1)&7
	
l1116:
	movf	((c:TEA_cmd@stat)),c,w
	addwf	((c:TEA_cmd@stat)),c,w
	iorwf	((c:_byte4)),c
	line	49
;TEA5767.c: 49: break;
	goto	l1132
	line	50
;TEA5767.c: 50: case 7:
	
l98:
	line	51
	
l1118:
;TEA5767.c: 51: byte4&=0b10111111; byte4|=stat<<6;
	bcf	(0+(6/8)+(c:_byte4)),c,(6)&7
	
l1120:
	rrncf	((c:TEA_cmd@stat)),c,w
	rrncf	wreg,c
	andlw	(0ffh shl 6) & 0ffh
	iorwf	((c:_byte4)),c
	line	52
;TEA5767.c: 52: break;
	goto	l1132
	line	53
;TEA5767.c: 53: case 8:
	
l99:
	line	54
	
l1122:
;TEA5767.c: 54: byte4&=0b11101111; byte4|=stat<<4;
	bcf	(0+(4/8)+(c:_byte4)),c,(4)&7
	
l1124:
	swapf	((c:TEA_cmd@stat)),c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((c:_byte4)),c
	line	55
;TEA5767.c: 55: break;
	goto	l1132
	line	56
;TEA5767.c: 56: case 9:
	
l100:
	line	57
	
l1126:
;TEA5767.c: 57: byte3&=0b10011111; byte3|=stat<<5;
	movlw	(09Fh)&0ffh
	andwf	((c:_byte3)),c
	swapf	((c:TEA_cmd@stat)),c,w
	rlncf	wreg
	andlw	(0ffh shl 5) & 0ffh
	iorwf	((c:_byte3)),c
	line	58
;TEA5767.c: 58: break;
	goto	l1132
	line	59
;TEA5767.c: 59: default:
	
l101:
	line	60
;TEA5767.c: 60: break;
	goto	l1132
	line	61
	
l1128:
;TEA5767.c: 61: }
	goto	l1132
	line	34
	
l91:
	
l1130:
	movf	((c:TEA_cmd@command)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 2 to 9
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
;	Chosen strategy is simple_byte

	xorlw	2^0	; case 2
	skipnz
	goto	l1098
	xorlw	3^2	; case 3
	skipnz
	goto	l1102
	xorlw	4^3	; case 4
	skipnz
	goto	l1106
	xorlw	5^4	; case 5
	skipnz
	goto	l1110
	xorlw	6^5	; case 6
	skipnz
	goto	l1114
	xorlw	7^6	; case 7
	skipnz
	goto	l1118
	xorlw	8^7	; case 8
	skipnz
	goto	l1122
	xorlw	9^8	; case 9
	skipnz
	goto	l1126
	goto	l1132

	line	61
	
l93:
	line	62
	
l1132:
;TEA5767.c: 62: TEA_writeData();
	call	_TEA_writeData	;wreg free
	line	63
	
l102:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_TEA_cmd
	__end_of_TEA_cmd:
	signat	_TEA_cmd,8313
	global	_TEA_writeData

;; *************** function _TEA_writeData *****************
;; Defined at:
;;		line 87 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_IdleI2C
;;		_WriteI2C
;; This function is called by:
;;		_TEA_cmd
;;		_TEA_setFreq
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	87
global __ptext9
__ptext9:
psect	text9
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\TEA5767.c"
	line	87
	global	__size_of_TEA_writeData
	__size_of_TEA_writeData	equ	__end_of_TEA_writeData-_TEA_writeData
	
_TEA_writeData:
;incstack = 0
	opt	stack 26
	line	88
	
l828:
;TEA5767.c: 88: IdleI2C();
	call	_IdleI2C	;wreg free
	line	89
	
l830:
;TEA5767.c: 89: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l112
	
l113:
	
l112:
	btfsc	((c:4037)),c,0	;volatile
	goto	u101
	goto	u100
u101:
	goto	l112
u100:
	goto	l832
	
l114:
	line	90
	
l832:
;TEA5767.c: 90: WriteI2C(0xC0);
	movlw	(0C0h)&0ffh
	
	call	_WriteI2C
	line	91
;TEA5767.c: 91: IdleI2C();
	call	_IdleI2C	;wreg free
	line	92
;TEA5767.c: 92: WriteI2C(byte1);
	movf	((c:_byte1)),c,w
	
	call	_WriteI2C
	line	93
;TEA5767.c: 93: IdleI2C();
	call	_IdleI2C	;wreg free
	line	94
;TEA5767.c: 94: WriteI2C(byte2);
	movf	((c:_byte2)),c,w
	
	call	_WriteI2C
	line	95
;TEA5767.c: 95: IdleI2C();
	call	_IdleI2C	;wreg free
	line	96
;TEA5767.c: 96: WriteI2C(byte3);
	movf	((c:_byte3)),c,w
	
	call	_WriteI2C
	line	97
;TEA5767.c: 97: IdleI2C();
	call	_IdleI2C	;wreg free
	line	98
;TEA5767.c: 98: WriteI2C(byte4);
	movf	((c:_byte4)),c,w
	
	call	_WriteI2C
	line	99
;TEA5767.c: 99: IdleI2C();
	call	_IdleI2C	;wreg free
	line	100
;TEA5767.c: 100: WriteI2C(0b01000000);
	movlw	(040h)&0ffh
	
	call	_WriteI2C
	line	101
	
l834:
;TEA5767.c: 101: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l115
	
l116:
	
l115:
	btfsc	((c:4037)),c,2	;volatile
	goto	u111
	goto	u110
u111:
	goto	l115
u110:
	goto	l118
	
l117:
	line	102
	
l118:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_TEA_writeData
	__end_of_TEA_writeData:
	signat	_TEA_writeData,89
	global	_WriteI2C

;; *************** function _WriteI2C *****************
;; Defined at:
;;		line 158 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
;; Parameters:    Size  Location     Type
;;  data_out        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_out        1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_IdleI2C
;; This function is called by:
;;		_TEA_writeData
;;		_TEA_readData
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
	line	158
global __ptext10
__ptext10:
psect	text10
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
	line	158
	global	__size_of_WriteI2C
	__size_of_WriteI2C	equ	__end_of_WriteI2C-_WriteI2C
	
_WriteI2C:
;incstack = 0
	opt	stack 26
;WriteI2C@data_out stored from wreg
	movwf	((c:WriteI2C@data_out)),c
	line	160
	
l808:
;i2c.c: 160: SSPBUF = data_out;
	movff	(c:WriteI2C@data_out),(c:4041)	;volatile
	line	161
	
l810:
;i2c.c: 161: if ( SSPCON1bits.WCOL )
	btfss	((c:4038)),c,7	;volatile
	goto	u61
	goto	u60
u61:
	goto	l816
u60:
	goto	l71
	line	162
	
l812:
;i2c.c: 162: return ( -1 );
;	Return value of _WriteI2C is never used
	goto	l71
	
l814:
	goto	l71
	line	163
	
l70:
	line	165
	
l816:
;i2c.c: 163: else
;i2c.c: 164: {
;i2c.c: 165: if( ((SSPCON1&0x0F)==0x08) || ((SSPCON1&0x0F)==0x0B) )
	movf	((c:4038)),c,w	;volatile
	andlw	low(0Fh)
	xorlw	08h
	btfsc	status,2
	goto	u71
	goto	u70
u71:
	goto	l76
u70:
	
l818:
	movf	((c:4038)),c,w	;volatile
	andlw	low(0Fh)
	xorlw	0Bh
	btfss	status,2
	goto	u81
	goto	u80
u81:
	goto	l71
u80:
	goto	l76
	
l75:
	line	167
;i2c.c: 166: {
;i2c.c: 167: while( SSPSTATbits.BF );
	goto	l76
	
l77:
	
l76:
	btfsc	((c:4039)),c,0	;volatile
	goto	u91
	goto	u90
u91:
	goto	l76
u90:
	goto	l820
	
l78:
	line	168
	
l820:
;i2c.c: 168: IdleI2C();
	call	_IdleI2C	;wreg free
	line	169
	
l822:
;i2c.c: 169: if ( SSPCON2bits.ACKSTAT )
	movf	((c:4037)),c,w	;volatile
	goto	l71
	line	170
	
l824:
;i2c.c: 170: return ( -2 );
;	Return value of _WriteI2C is never used
	goto	l71
	
l826:
	goto	l71
	line	171
	
l79:
;i2c.c: 171: else return ( 0 );
;	Return value of _WriteI2C is never used
	goto	l71
	
l80:
	goto	l71
	line	172
	
l73:
	goto	l71
	line	174
	
l72:
	line	175
	
l71:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_WriteI2C
	__end_of_WriteI2C:
	signat	_WriteI2C,4217
	global	_IdleI2C

;; *************** function _IdleI2C *****************
;; Defined at:
;;		line 65 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteI2C
;;		_TEA_writeData
;;		_TEA_readData
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	65
global __ptext11
__ptext11:
psect	text11
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\i2c.c"
	line	65
	global	__size_of_IdleI2C
	__size_of_IdleI2C	equ	__end_of_IdleI2C-_IdleI2C
	
_IdleI2C:
;incstack = 0
	opt	stack 26
	line	67
	
l794:
;i2c.c: 67: while ( ( SSPCON2 & 0x1F ) || ( SSPSTATbits.R_W ) )
	goto	l796
	
l50:
	line	68
;i2c.c: 68: continue;
	goto	l796
	
l49:
	line	67
	
l796:
	movff	(c:4037),??_IdleI2C+0+0	;volatile
	movlw	01Fh
	andwf	(??_IdleI2C+0+0),c
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l796
u10:
	
l798:
	btfsc	((c:4039)),c,2	;volatile
	goto	u21
	goto	u20
u21:
	goto	l796
u20:
	goto	l52
	
l51:
	line	69
	
l52:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_IdleI2C
	__end_of_IdleI2C:
	signat	_IdleI2C,89
	global	_detectButton

;; *************** function _detectButton *****************
;; Defined at:
;;		line 106 in file "C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  q               1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
	line	106
global __ptext12
__ptext12:
psect	text12
	file	"C:\Users\Hamza\Desktop\TPS Project\Cassa_Audio\progetto.c"
	line	106
	global	__size_of_detectButton
	__size_of_detectButton	equ	__end_of_detectButton-_detectButton
	
_detectButton:
;incstack = 0
	opt	stack 30
	line	108
	
l1008:
;progetto.c: 107: char q;
;progetto.c: 108: if (RB0 || RB1){
	btfsc	c:(31752/8),(31752)&7	;volatile
	goto	u251
	goto	u250
u251:
	goto	l1012
u250:
	
l1010:
	btfss	c:(31753/8),(31753)&7	;volatile
	goto	u261
	goto	u260
u261:
	goto	l1050
u260:
	goto	l1012
	
l180:
	line	109
	
l1012:
;progetto.c: 109: _delay(100000);
	movlw	130
movwf	(??_detectButton+0+0)&0ffh,c,f
	movlw	222
u537:
decfsz	wreg,f
	goto	u537
	decfsz	(??_detectButton+0+0)&0ffh,c,f
	goto	u537

	line	110
	
l1014:
;progetto.c: 110: if(RB0&&RB1){
	btfss	c:(31752/8),(31752)&7	;volatile
	goto	u271
	goto	u270
u271:
	goto	l181
u270:
	
l1016:
	btfss	c:(31753/8),(31753)&7	;volatile
	goto	u281
	goto	u280
u281:
	goto	l181
u280:
	line	111
	
l1018:
;progetto.c: 111: function=0x10;
	movlw	low(010h)
	movwf	((c:_function)),c
	line	112
;progetto.c: 112: }
	goto	l195
	line	113
	
l181:
;progetto.c: 113: else if (RB0){
	btfss	c:(31752/8),(31752)&7	;volatile
	goto	u291
	goto	u290
u291:
	goto	l183
u290:
	line	114
	
l1020:
;progetto.c: 114: for(q=0;q<4;q++) _delay(150000);
	movlw	low(0)
	movwf	((c:detectButton@q)),c
	
l1022:
		movlw	04h-1
	cpfsgt	((c:detectButton@q)),c
	goto	u301
	goto	u300

u301:
	goto	l1026
u300:
	goto	l185
	
l1024:
	goto	l185
	
l184:
	
l1026:
	movlw	195
movwf	(??_detectButton+0+0)&0ffh,c,f
	movlw	205
u547:
decfsz	wreg,f
	goto	u547
	decfsz	(??_detectButton+0+0)&0ffh,c,f
	goto	u547
	nop

	
l1028:
	incf	((c:detectButton@q)),c
		movlw	04h-1
	cpfsgt	((c:detectButton@q)),c
	goto	u311
	goto	u310

u311:
	goto	l1026
u310:
	
l185:
	line	115
;progetto.c: 115: if(RB0){
	btfss	c:(31752/8),(31752)&7	;volatile
	goto	u321
	goto	u320
u321:
	goto	l1032
u320:
	line	116
	
l1030:
;progetto.c: 116: function=0x11;
	movlw	low(011h)
	movwf	((c:_function)),c
	line	117
;progetto.c: 117: }
	goto	l195
	line	118
	
l186:
	line	119
	
l1032:
;progetto.c: 118: else{
;progetto.c: 119: function=0x12;
	movlw	low(012h)
	movwf	((c:_function)),c
	goto	l195
	line	120
	
l187:
	line	121
;progetto.c: 120: }
;progetto.c: 121: }
	goto	l195
	line	122
	
l183:
;progetto.c: 122: else if (RB1){
	btfss	c:(31753/8),(31753)&7	;volatile
	goto	u331
	goto	u330
u331:
	goto	l1048
u330:
	line	123
	
l1034:
;progetto.c: 123: for(q=0;q<4;q++) _delay(150000);
	movlw	low(0)
	movwf	((c:detectButton@q)),c
	
l1036:
		movlw	04h-1
	cpfsgt	((c:detectButton@q)),c
	goto	u341
	goto	u340

u341:
	goto	l1040
u340:
	goto	l191
	
l1038:
	goto	l191
	
l190:
	
l1040:
	movlw	195
movwf	(??_detectButton+0+0)&0ffh,c,f
	movlw	205
u557:
decfsz	wreg,f
	goto	u557
	decfsz	(??_detectButton+0+0)&0ffh,c,f
	goto	u557
	nop

	
l1042:
	incf	((c:detectButton@q)),c
		movlw	04h-1
	cpfsgt	((c:detectButton@q)),c
	goto	u351
	goto	u350

u351:
	goto	l1040
u350:
	
l191:
	line	124
;progetto.c: 124: if(RB1){
	btfss	c:(31753/8),(31753)&7	;volatile
	goto	u361
	goto	u360
u361:
	goto	l1046
u360:
	line	125
	
l1044:
;progetto.c: 125: function=0x13;
	movlw	low(013h)
	movwf	((c:_function)),c
	line	126
;progetto.c: 126: }
	goto	l195
	line	127
	
l192:
	line	128
	
l1046:
;progetto.c: 127: else{
;progetto.c: 128: function=0x14;
	movlw	low(014h)
	movwf	((c:_function)),c
	goto	l195
	line	129
	
l193:
	line	130
;progetto.c: 129: }
;progetto.c: 130: }
	goto	l195
	line	131
	
l189:
	line	132
	
l1048:
;progetto.c: 131: else{
;progetto.c: 132: function=0;
	movlw	low(0)
	movwf	((c:_function)),c
	goto	l195
	line	133
	
l194:
	goto	l195
	
l188:
	goto	l195
	
l182:
	line	134
;progetto.c: 133: }
;progetto.c: 134: }
	goto	l195
	line	135
	
l178:
	line	136
	
l1050:
;progetto.c: 135: else{
;progetto.c: 136: function=0;
	movlw	low(0)
	movwf	((c:_function)),c
	line	137
	
l195:
	line	138
;progetto.c: 137: }
;progetto.c: 138: return function;
	movf	((c:_function)),c,w
	goto	l196
	
l1052:
	line	139
	
l196:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_detectButton
	__end_of_detectButton:
	signat	_detectButton,89
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
