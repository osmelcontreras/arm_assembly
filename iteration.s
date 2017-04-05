/********************************************************
* iteration  -- program to show iteration              *
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

				;JAVA IMPLEMENTATION OF PROGRAM
				; r1 = 4
				; r2 = 4
				;for(int r0 = 0; r0 < r4; r0++){
				;  r4 *= r2
				; r3[r0, LSL #2] = r4;
				;}

				MOV r0, #0				;Value to increment array index: r0
				MOV r2, #4				;Value used to multiply by 4
				MOV r1, #4 			    ;Value to compare with i: i < 4
				MOV r3, #1				;Base Address for array: array []
				MOV r4, #1				;Count - used to multiply 4*n


loop

				MUL r4, r4, r2          ;Multiply value by 4
				STR r4, [r3, r0,LSL #2] ;LS2 #2 multiplies any value in r0 from 0-1 and inputs it into register Base Address r3
				CMP r4, r1				;Compares r0 to r4 to see if the loop should end
				ADD r0, r0, #1			;Increments r0 +1
				BLE loop				;Branches back to the top of the loop

				ENDP					;Ends program

				ALIGN
				AREA allocations, DATA, READWRITE
				END
