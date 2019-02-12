		#include<p18f8722.inc>
		setf TRISE
		clrf TRISD
		clrf PORTD
START 	;#clrf WREG
		BTFSS PORTE, 0 
		BZ LO
		BNZ HI

HI		MOVLW 0x99
		MOVLW PORTD
		BZ START

LO 		MOVWF 0x66
		MOVWF PORTD 
		BNZ START	
	
		END