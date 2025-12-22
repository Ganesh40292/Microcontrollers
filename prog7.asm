    AREA RESET, CODE, READONLY
    ENTRY

    ; Demonstrate MRS (Move from Special Register)
    MRS r0, CPSR         ; Copy the Current Program Status Register (CPSR) to r0
    MOV r1, r0           ; Copy CPSR value to another register (r1)
    
    ; Modify specific bits in the CPSR using MSR
    BIC r1, r1, #0x80    ; Clear the IRQ disable bit (Bit 7)
    MSR CPSR_c, r1       ; Write the modified value back to the CPSR (c = condition flags only)

    ; Read and display the modified CPSR
    MRS r2, CPSR         ; Copy the modified CPSR to r2

stop
    B stop               ; Infinite loop to stop the program

    END
