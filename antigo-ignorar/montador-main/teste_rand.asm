JMP main

main:
    RAND R1
    i: var #1
    LOADN R2, #0
    STORE i, R2

main_loop:
    LOAD R2, i
    INC R2
    LOADN R3, #'A'
    LOADN R4, #10
    ADD R4, R4, R2
    OUTCHAR R3, R4
    CMP R2, R1
    JEQ fim_loop
    STORE i, R2
    JMP main_loop

fim_loop:
    HALT