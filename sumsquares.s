/********************************************************
  * sumSquares  -- program to sum of squares 		         *
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
				MOV R0, #5							; Num of squares
				MOV R1, #0							; Result
				MOV R2, #1							; iterator/square to be multiplied
				; for (R2 = 1; R2 <= R0; R2++) {
				; 	 R3 = R2*R2;
				;	 R1 += R3;
				; }
loop			MUL R3, R2, R2						; R3=R2*R2
				ADD R1, R1, R3						; R1 *= R3
				ADD R2, R2, #1						; R2++
				CMP R2, R0							; if R2 != R0
				BLE loop								; go back to top of loop
				ENDP								;end procedure

				ALIGN
				AREA allocations, DATA, READWRITE
				END
