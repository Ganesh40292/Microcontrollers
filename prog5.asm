    AREA RESET, CODE, READONLY
    ENTRY

    ; Load the numbers into registers
    LDR r0, =num1         ; Load address of num1 into r0
    LDR r1, =num2         ; Load address of num2 into r1
    LDR r2, [r0]          ; Load num1 into r2
    LDR r3, [r1]          ; Load num2 into r3

    ; Perform swap using XOR (Without using temp register)
    EOR r2, r2, r3        ; r2 = r2 XOR r3
    EOR r3, r2, r3        ; r3 = r2 XOR r3 (num2 becomes num1)
    EOR r2, r2, r3        ; r2 = r2 XOR r3 (num1 becomes num2)

    ; Store swapped values back to memory
    STR r2, [r0]          ; Store the swapped value of num1
    STR r3, [r1]          ; Store the swapped value of num2

stop
    B stop                ; Infinite loop to stop the program

    ; Data Section
    AREA DATA, DATA, READWRITE
num1
    DCD 25                ; First number
num2
    DCD 40                ; Second number

    END
