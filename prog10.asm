    AREA RESET, CODE, READONLY
    ENTRY

    ; Initialize source and destination addresses
    LDR r0, =source_data     ; Load the address of the source block into r0
    LDR r1, =destination_data ; Load the address of the destination block into r1
    MOV r2, #5               ; Number of words to transfer (5 words in this case)

transfer_loop
    LDMIA r0!, {r3-r7}       ; Load multiple data from source to registers r3 to r7
    STMIA r1!, {r3-r7}       ; Store multiple data from registers to destination
    SUBS r2, r2, #5          ; Decrease counter by 5 (since we used 5 registers)
    BNE transfer_loop        ; Continue until all words are transferred

stop
    B stop                   ; Infinite loop to stop the program

    ; Data Section
    AREA DATA, DATA, READWRITE
source_data
    DCD 10, 20, 30, 40, 50   ; Example data to transfer
destination_data
    DCD 0, 0, 0, 0, 0        ; Empty block for data transfer

    END
