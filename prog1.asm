  ;If the registers r1, r2 and r3 contain the values 0, 15 and 12 respectively,  
  ;what will be the value in register r4 after execution of the following code  segment? 
  ;Assume that the registers are 32-bits in size. 
;MVN r0, r1 
;AND r4, r0,r2 
;EOR r4, r4, r3

  AREA QUESTION1,CODE,READONLY
START
     MOV R1, #0      ; Load 0 into R1  
     MOV R2, #15     ; Load 15 into R2  
     MOV R3, #12     ; Load 12 into R3  
     MVN R0, R1      ; Bitwise NOT of R1, store in R0  
     AND R4, R0, R2  ; Bitwise AND of R0 and R2, store in R4  
     EOR R4, R4, R3  ; Bitwise XOR of R4 and R3, store in R4  
HERE B HERE      ; Infinite loop  
    END             ; End of the program

		
		
		
				
