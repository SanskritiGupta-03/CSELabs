
	AREA RESET,DATA,READONLY 
	EXPORT __Vectors 
__Vectors 
	DCD 0X10001000 
	DCD Reset_Handler 
	ALIGN 
	AREA MYCODE,CODE,READONLY 
	EXPORT Reset_Handler 
Reset_Handler 
	LDR R0, =SRC 
	LDR R1, =DST 
	LDR R2, =10
UP	LDR R3, [R0],#4 
	ADDS R5,R5,R3
	ADC R6,#0
	SUBS R2, #1
	BNE UP 
	STR R5,[R1],#4
	STR R6,[R1]
STOP B STOP 
SRC DCD 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF ,0xFFFFFFFF, 0xFFFFFFFF 
	AREA MYDATA, DATA, READWRITE 
DST DCD 0
	END 