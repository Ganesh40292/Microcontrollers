    AREA RESET, CODE, READONLY
    ENTRY

    ; Initialize memory and registers
    LDR r2, =0x40000000     ; Load memory address 0x40000000 into r2
    LDR r0, =0x00000000     ; Initialize r0 with 0x00000000
    LDR r1, =0x11112222     ; Initialize r1 with 0x11112222

    ; Store initial data into memory
    LDR r3, =0x12341234     ; Data to be stored in memory
    STR r3, [r2]            ; Store 0x12341234 at address 0x40000000

    ; Perform SWP operation (Swap values)
    SWP r0, r1, [r2]        ; Swap r1 with memory content, store memory content in r0

stop
    B stop                  ; Infinite loop to stop the program

    END
