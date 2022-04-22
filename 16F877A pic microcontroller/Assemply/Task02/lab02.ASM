;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


	PROCESSOR 16F877	; Define MCU type
	;__CONFIG 0x3733		; Set config fuses

; Register Label Equates....................................
        
PORTB   EQU     06	; Port B Data Register  
TRISB	EQU	86	; Port B Direction Register
CNT     EQU     20	; GPR used as delay counter
CountOuter0	equ	D'5'
CountInner0	equ	D'100'

	cblock	0x20
	
		CountOuter
		CountInner
	endc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Initialise Port B (Port A defaults to inputs).............
        
	BANKSEL	TRISB		; Select bank 1
       	MOVLW   b'00000000'    	; Port B Direction Code
    	MOVWF	TRISB          	; Load the DDR code into F86
	BANKSEL	PORTB		; Select bank 0
	GOTO	reset		; Jump to main loop


; 'delay' subroutine ........................................
        

delay
	movlw	CountOuter0
	movwf	CountOuter
DecO	
	movlw	CountInner0
	movwf	CountInner
DecI	
	nop
	decfsz	CountInner, F
	goto	DecI
	decfsz	CountOuter, F
	goto	DecO	
	return


; Start main loop ...........................................

reset   CLRF    PORTB  		; Clear Port B Data 

start   clrwdt
        INCF   	PORTB          	; Increment output at Port B 
	MOVLW  	0FF            	; Delay count literal
	CALL	delay		; Jump to subroutine 'delay'
        GOTO   	start          	; Repeat main loop always

        END                   	; Terminate source code
