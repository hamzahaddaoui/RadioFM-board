# Radio FM with speaker

## Abstract

In this project I developed a microcontroller base system that transmits a digital signal to an amplifier, attached to a speaker.
The audio signal can be received from different sources such as an FM radio module, which picks up various frequencies, or from a 3.5mm jack. Further development may include a bluetooth support.

![enter image description here](https://github.com/hamzahaddaoui/RadioFM-board/blob/main/Documentation/finalCircuit.png)

## Details

The project began with a deep study of the TEA5767 chip, and the developing of a library for its usage.
This component is an electronically tuned FM stereo radio for low-voltage applications with fully integrated Intermediate Frequency (IF) selectivity and demodulation. The radio is completely adjustment-free and only requires a minimum of small and low cost external components. The radio can be tuned to the European, US, and Japanese FM bands.

The amplification stage was handled by the PAM8320 which is an efficient 20W mono Class-D audio power amplifier, designed to drive speakers as low as 4Ω in a bridge-tied- load configuration. Due to the low power dissipation and high efficiency of up to 95%, it can be used without any external heat sink whilst playing music.

The microcontroller mounted on the board (8-bit Microchip PIC) controls the user inputs (buttons) and  generates a response to be sent to the radio module. Using the buttons on the top of the speaker, it is possible to change frequency, save favourite stations or go on search mode.

### Schematic 
![enter image description here](https://github.com/hamzahaddaoui/RadioFM-board/blob/main/Documentation/schematic.png)

### PCB
![enter image description here](https://github.com/hamzahaddaoui/RadioFM-board/blob/main/Documentation/pcb.png)

### Board photoengraving process
![enter image description here](https://github.com/hamzahaddaoui/RadioFM-board/blob/main/Documentation/Board.png)
