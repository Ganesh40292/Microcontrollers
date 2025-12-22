    AREA RESET, CODE, READONLY
    ENTRY

    ; Load the number to check
    LDR r0, =number       ; Load address of the number into r0
    LDR r1, [r0]          ; Load the 32-bit number into r1
    MOV r2, #32           ; Number of bits to check
    MOV r3, #0            ; Initialize counter to 0

count_loop
    ; Check the least significant bit (LSB) using AND
    AND r4, r1, #1        ; r4 = r1 AND 1 (Extract LSB)
    ADD r3, r3, r4        ; Add result to counter if bit is 1
    ; Perform barrel shift to the right
    MOVS r1, r1, LSR #1   ; Logical shift right by 1 bit
    SUBS r2, r2, #1       ; Decrement the bit count
    BNE count_loop        ; If r2 is not zero, continue loop

stop
    B stop                ; Infinite loop to stop the program

    ; Data Section
    AREA DATA, DATA, READWRITE
number
    DCD 0xF0F0F0F0        ; Example 32-bit number (Binary: 11110000111100001111000011110000)

    END
