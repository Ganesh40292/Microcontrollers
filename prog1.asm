    AREA RESET, CODE, READONLY
    ENTRY

    MOV r1, #0       ; Load value 0 into r1
    MOV r2, #15      ; Load value 15 into r2
    MOV r3, #12      ; Load value 12 into r3

    MVN r0, r1       ; Perform bitwise NOT on r1 and store in r0
    AND r4, r0, r2   ; Perform bitwise AND between r0 and r2, store in r4
    EOR r4, r4, r3   ; Perform bitwise XOR between r4 and r3, store in r4

    END
