	LIST p=16f877a
	__CONFIG 0x3733		


Timer EQU 20
DDCodeB SET b'00000000'
CONSTANT Count=003
PORTB equ 06
PORTD equ 08
TRISB equ 86
#DEFINE RunBut PORTD,1
#DEFINE ResBut PORTD,0


BANKSEL	TRISB		; Select bank 1
       	MOVLW   DDCodeB    	; Port B Direction Code
    	MOVWF	TRISB          	; Load the DDR code into F86
	BANKSEL	PORTB		; Select bank 0
	goto reset
; Program code ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 'delay' macro .............................................
        
delay  	MACRO			; macro definition starts
	MOVWF  	Timer          	; Copy W to timer register
down    DECF	Timer          	; Decrement timer register 
        BNZ	down           	; and repeat until zero
	ENDM			; macro definition ends

; Main loop .................................................

reset   CLRF    PORTB  		; Clear Port B Data 

start   BTFSS  	ResBut   	; Test reset button
       	GOTO   	reset          	; and reset Port B if pressed
        BTFSC  	RunBut   	; Test run button
        GOTO  	start          	; and repeat if n pressed

        INCF   	PORTB          	; Increment output at Port B 
	MOVLW  	Count          	; Delay count literal
	delay			; Jump to subroutine 'delay'
        GOTO   	start          	; Repeat main loop always

        END                   	; Terminate source code......
