/*Write a program to add two 128 bit numbers available in code memory and
store the result in data memory.
Hint: Use indexed addressing mode.*/
	
	
	AREA RESET,DATA,READONLY 
	EXPORT __Vectors 
__Vectors 
	DCD 0X10001000 
	DCD Reset_Handler 
	ALIGN 
	AREA MYCODE,CODE,READONLY 
	EXPORT Reset_Handler 
Reset_Handler 
    LDR R0, =VAL1
	LDR R1, =VAL2
    LDR R2, =DST 
    LDR R3,=4 ;Counter
	MOV R7,#0 ;Carry
UP  LDR R4, [R0],#4
	LDR R5, [R1],#4
    ADDS R8,R7,R4
	MOV R7,#0
    ADC R7,#0
	ADDS R8,R5
	ADC R7,#0
	STR R8,[R2],#4
    SUBS R3, #1
    BNE UP
	STR R7,[R2]
STOP B STOP 
VAL1 DCD 0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF
VAL2 DCD 0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF
    AREA MYDATA, DATA, READWRITE 
DST DCD 0
    END
