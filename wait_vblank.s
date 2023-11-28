.global wait_vblank

wait_vblank:
    LDR R0, [R4]
    ADD R0, R0, #1
    STR R0, [R4]
    CMP R0, #160
    BGE done
    B wait_vblank

done:
    MOV PC, LR

