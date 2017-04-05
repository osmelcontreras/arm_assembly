/********************************************************
* loadstore  -- program to load and store 		         *
*																										   *
*                                                      *
* Author:  Osmel, Contreras                            *
*                                                      *
* Purpose:  Demonstration of a simple program.         *
*                                                      *
* Usage:                                               *
*      Run the program and the message appears.        *
********************************************************/

				INCLUDE stm32l1xx_constants.s		; Load Constant Definitions
				INCLUDE stm32l1xx_tim_constants.s   ; TIM Constants

				AREA    main, CODE, READONLY
				EXPORT	__main						; make __main visible to linker
				ENTRY

__main			PROC

				MOV R0, #45     ;Move #45 to R0
				MOV R1, #60		;Move #60 to R1
				ADD R2, R1, R0	;Add R1 & R0 and store it R2

				STR R2, [R3, R2];STORE VALUE of R2 into [R3]
				LDR R7, [R3, R2];LOAD VALUE of R7 into [R3]

				MUL R5, R0, R1 ;MULTIPLY VALUE in R0 and R1 and store it in R5
				STR R5, [R3, R5]; STORE R5 in array R3
				LDR R6, [R3, R5]; Load value in R5 and store it in R6

				ENDP

				ALIGN
				AREA allocations, DATA, READWRITE
				END
