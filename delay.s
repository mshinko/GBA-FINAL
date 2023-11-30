.global delay
delay:
    MOV R1, #0
delay_loop:
    CMP R1, R0
    BEQ delay_done
    ADD R1, R1, #1
    B delay_loop
delay_done:
    BX LR

