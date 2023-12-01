/* Filename: switch_screen.s */

/* Define constants for register addresses */
.equ BG2_CONTROL, 0x400000C

/* Entry point for the switch_screen function */
.global switch_screen
switch_screen:
    ldr r1, =BG2_CONTROL
    ldr r2, [r1]
    bic r2, r2, #0x01F00
    orr r2, r2, r0, lsl #8
    str r2, [r1]
    bx lr

