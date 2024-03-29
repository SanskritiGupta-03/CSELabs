//Write a program to subtract two 128 bit numbers available in the code memory and store the result in the data memory.

AREA RESET,DATA,READONLY 
	EXPORT __Vectors 
__Vectors 
	DCD 0X10001000 
	DCD Reset_Handler 
	ALIGN 
	AREA MYCODE,CODE,READONLY 
	ENTRY
	EXPORT Reset_Handler 
Reset_Handler 
	LDR R0, =VAL1
	LDR R1, =VAL2
	LDR R8, =DST
	LDR R3, =4
	LDR R4, =0
GO  LDR R5, [R0], #4
	LDR R6, [R1], #4
	SUBS R7, R5, R6
	SUB R7, R7, R4
	STR R7, [R8], #4
	ADC R4, #0
	TEQ R4, #0
	BEQ ZERO
	MOV R4, #0
	B SKIP
ZERO	MOV R4, #1
SKIP	SUBS R3, #1
	BNE GO

VAL1 DCD 0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF
VAL2 DCD 0xFFFFFFEE,0xFFFFFFEE,0xFFFFFFEE,0xFFFFFFEE
    AREA MYDATA, DATA, READWRITE 
DST DCD 0
	END
