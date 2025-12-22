    AREA RESET, CODE, READONLY
    ENTRY

    MOV r0, #0            ; First Fibonacci number (Fib(0) = 0)
    MOV r1, #1            ; Second Fibonacci number (Fib(1) = 1)
    MOV r2, #10           ; Number of Fibonacci numbers to generate
    MOV r3, #2            ; Counter starting from 2 (since Fib(0) and Fib(1) are already defined)

    LDR r4, =fib_array    ; Load address of memory location to store Fibonacci numbers
    STR r0, [r4], #4      ; Store Fib(0) in memory
    STR r1, [r4], #4      ; Store Fib(1) in memory

loop
    ADD r5, r0, r1        ; r5 = r0 + r1 (Next Fibonacci number)
    STR r5, [r4], #4      ; Store the Fibonacci number in memory
    MOV r0, r1            ; r0 = r1 (Shift r1 to r0)
    MOV r1, r5            ; r1 = r5 (Update the next Fibonacci number)
    ADD r3, r3, #1        ; Increment the counter
    CMP r3, r2            ; Compare with 10
    BLT loop              ; If counter < 10, repeat loop

stop
    B stop                ; Infinite loop to stop the program

    AREA DATA, DATA, READWRITE
fib_array  SPACE 40       ; Allocate space for 10 Fibonacci numbers (10 * 4 bytes = 40 bytes)

    END
