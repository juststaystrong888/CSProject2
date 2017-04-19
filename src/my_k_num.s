;Ailin
;k1631383
;
;This program  outputs all of the digits for my k-number in correct sequence.
;Only the last number will be displayed on the LEDs, because my Arduino writes the numbers out very fast to the LEDs.
;Firstly, i initialize status register, specify PORTB and the direction of data flow for our I/O on PORTB(the Data Direction Register (DDRB)).
;Then i write code to set the needed bits of digits of my k-number of PORTB by writing out hexadecimal numbers of digits to PORTB

.equ SREG, 0x3f    ; Define SREG label (status register) with its address
.equ PORTB, 0x05   ;Define address of PORTB
.equ DDRB,0x04     ;Data Direction Register for PORTB
.org 0             ;specify the start address
;reset system status
main: ldi r16, 0   ;set register r16 to zero
      out SREG,r16 ;copy contents of r16 to SREG, i.e., clear SREG
      ;configure PORTB for output
	  ldi r16,0x01 ; copies hexadecimal 0x01 to r16
      out DDRB, r16 ;writes r16 to DDRB, setting up bit 0 in output mode
      
	  ldi r16, 0x01 ;copies hexadecimal 0x01 to r16
      out PORTB, r16 ;writes contents of r16 to PORTB
      
	  ldi r16,0x06 ;copies hexadecimal 0x01 to r16
      out DDRB, r16  ;writes r16 to DDRB, setting up bits 1 and 2 in output mode
      
	  ldi r16, 0x06 ; copies hexadecimal 0x06 to r16
      out PORTB, r16 ;writes contents of r16 to PORTB
      
	  ldi r16,0x03 ;copies hexadecimal 0x03 to r16
      out DDRB, r16 ;writes r16 to DDRB, setting up bits 0 and 1 in output mode
      
	  ldi r16, 0x03 ; copies hexadecimal 0x03 to r16
      out PORTB, r16 ;writes contents of r16 to PORTB
      
	  ldi r16,0x01 ; copies hexadecimal 0x01 to r16
      out DDRB, r16 ;writes r16 to DDRB, setting up bit 0 in output mode
      
	  ldi r16, 0x01 ;copies hexadecimal 0x01 to r16
      out PORTB, r16  ;writes contents of r16 to PORTB
      
	  ldi r16,0x03  ;copies hexadecimal 0x03 to r16
      out DDRB, r16 ;writes r16 to DDRB, setting up bits 0 and 1  in output mode
      
	  ldi r16, 0x03  ;copies hexadecimal 0x03 to r16
      out PORTB, r16 ;writes contents of r16 to PORTB
      
	  ldi r16,0x08 ;copies hexadecimal 0x08 to r16
      out DDRB, r16 ;writes r16 to DDRB, setting up bit 3 in output mode
      
	  ldi r16, 0x08 ;copies hexadecimal 0x08 to r16
      out PORTB, r16 ;writes contents of r16 to PORTB
      
	  ldi r16,0x03  copies hexadecimal 0x03 to r16
      out DDRB, r16  ;writes r16 to DDRB, setting up bits 0 and 1 in output mode
      
	  ldi r16, 0x03  ;copies hexadecimal 0x03 to r16
      out PORTB, r16 ;writes contents of r16 to PORTB
mainloop:rjmp mainloop ;jump back to mainloop address
