//Write a program to subtract two 32 bit numbers available in the code memory
and store the result in the data memory.

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
    LDR R2, =DST 
	LDR R4,[R0]
	LDR R5,[R1]
    SUBS R3,R4,R5
	ADC R6,#0
	STR R3,[R2],#4
	STR R6,[R2]
STOP B STOP 
VAL1 DCD 0xFFFFFFFF
VAL2 DCD 0xFFFFFFEE
    AREA MYDATA, DATA, READWRITE 
DST DCD 0
	END
