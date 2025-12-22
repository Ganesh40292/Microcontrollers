    AREA RESET, CODE, READONLY
    ENTRY

    ; Initialize registers
    LDR r0, =numbers        ; Load address of numbers into r0
    LDR r1, =5              ; Number of elements
    MOV r2, #0              ; r2 will store the sum of squares

loop
    LDR r3, [r0], #4        ; Load the current number into r3 and increment address by 4
    MUL r4, r3, r3          ; r4 = r3 * r3 (Calculate square)
    ADD r2, r2, r4          ; r2 = r2 + r4 (Add square to sum)
    SUBS r1, r1, #1         ; Decrement the counter
    BNE loop                ; If not zero, repeat loop

    ; Sum of squares is now in r2
stop
    B stop                  ; Infinite loop to stop the program

    ; Data Section
    AREA DATA, DATA, READWRITE
numbers
    DCD 2, 3, 4, 5, 6       ; Example 5 numbers stored in memory (2² + 3² + 4² + 5² + 6² = 90)

    END
