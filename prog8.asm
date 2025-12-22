    AREA RESET, CODE, READONLY
    ENTRY

    ; Initialize memory and registers
    LDR r1, =0x40000000     ; Initialize r1 with memory address 0x40000000

    ; Load values from memory
    LDR r5, [r1]            ; Load value at 0x40000000 into r5 (10)
    LDR r6, [r1, #4]        ; Load value at 0x40000004 into r6 (20)
    LDR r7, [r1, #8]        ; Load value at 0x40000008 into r7 (30)

    ; Perform arithmetic operations
    ADD r2, r5, r6          ; r2 = r5 + r6 (10 + 20 = 30)
    SUB r2, r2, r7          ; r2 = r2 - r7 (30 - 30 = 0)

stop
    B stop                  ; Infinite loop to stop the program

    ; Data Section
    AREA DATA, DATA, READWRITE
    DCD 10                  ; Data at 0x40000000
    DCD 20                  ; Data at 0x40000004
    DCD 30                  ; Data at 0x40000008

    END
