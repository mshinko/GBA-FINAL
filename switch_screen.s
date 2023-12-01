/* Filename: switch_screen.s */

/* Define constants for register addresses */
.equ BG2_CONTROL, 0x400000C

/* Entry point for the switch_screen function */
.global switch_screen
switch_screen:
    ldr r1, [r13, #4]      /* Load the parameter from the stack */
    ldr r0, =BG2_CONTROL
    ldr r2, [r0]
    bic r2, r2, #0x3FF     /* Clear the screen block index bits */
    orr r2, r2, r1, lsl #8 /* Use the parameter as screen_block_index */
    str r2, [r0]
    bx lr

