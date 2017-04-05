/********************************************************
* expression  -- program to add and subtract           *
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
				MOV r0, #40	   			;load register r0 with A which is 40
				MOV r1, #3				;Load register r1, with B which is 3
				ADD r0, r0,r1,LSL #3	;Add 8 X B to A in R0
				MOV r1, #10				;Load register r1 with C which is 10(reuse of r1)
				MOV r2, #4				;Load register r2, with 4
				MLA r0, r1, r2,r0		;Add 4 X C to total in r0
				SUB r0, r0, #10			;Subtract 10 from the total
				MOV  r0, r0, ASR #2		;Divide the total by 4
S				B    S					;Stop here
				END
