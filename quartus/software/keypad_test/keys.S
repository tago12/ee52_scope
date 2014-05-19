
/* Includes */
#include "system.h"   /* Base addresses */
#include "interfac.h" /* Software interface definitions */
#include "keys.h"     /* Local constants */

/* Variables */
    .section .data  /* No alignment necessary: variables are bytes */
curr_key: .byte 0   /* Current pending key; 0 if no key available */

/* Code */
    .section .text

/* keys_init */
    .global keys_init
keys_init:
    ADDI    sp, sp, NEG_WORD_SIZE  /* push return address */
    STW     ra, 0(sp)

    MOVIA   r9, curr_key           /* no key (r0) available at start */
    STB     r0, 0(r9)              /* so store it into variable curr_key */

	MOVHI   r8, %hi(PIO_0_BASE)    /* write to the PIO registers */
    ORI 	r8, r8, %lo(PIO_0_BASE)
    MOVI    r9, ENABLE_ALL         /*  the ENABLE_ALL value */
    STBIO   r9, EDGE_CAP_OF(r8)    /* sending general EOI to clear ints */

    MOV     r4, r0                 /* argument ic_id is ignored */
    MOVI    r5, PIO_0_IRQ          /* second arg is IRQ num */
    MOVIA   r6, keys_handler       /* third arg is int handler */
    MOV     r7, r0                 /* fourth arg is data struct (null) */
    ADDI    sp, sp, NEG_WORD_SIZE  /* fifth arg goes on stack */
    STW     r0, 0(sp)              /*  and is ignored (so 0) */
    CALL    alt_ic_isr_register    /* finally, call setup function */
    ADDI    sp, sp, WORD_SIZE      /* clean up stack after call */

    LDW     ra, 0(sp)              /* pop return address */
    ADDI    sp, sp, WORD_SIZE

    STBIO   r9, INTMASK_OF(r8)     /* enable (unmask) interrupts */

    RET                            /* and finally return */



/* keys_handler */
    .global keys_handler
keys_handler:
    ADDI    sp, sp, NEG_WORD_SIZE   /* save r8 */
    STW     r8, 0(sp)

    MOVHI   et, %hi(PIO_0_BASE)  /* fetch PIO edge capture register */
    ORI 	et, et, %lo(PIO_0_BASE)
    LDBIO   r8, EDGE_CAP_OF(et)

    STBIO   r8, EDGE_CAP_OF(et)  /* and write back to send EOI */
                                 /* figure out what interrupt fired */
    MOVI    et, PUSH1_MASK       /* check if it was pushbutton 1 */
    BEQ     r8, et, keys_handler_push1
    MOVI    et, PUSH2_MASK       /* check if it was pushbutton 2 */
    BEQ     r8, et, keys_handler_push2
    MOVI    et, ROT1R_MASK       /* check if it was rotary enc 1 right */
    BEQ     r8, et, keys_handler_rot1r
    MOVI    et, ROT1L_MASK       /* check if it was rotary enc 1 left */
    BEQ     r8, et, keys_handler_rot1l
    MOVI    et, ROT2R_MASK       /* check if it was rotary enc 2 right */
    BEQ     r8, et, keys_handler_rot2r
    JMPI    keys_handler_rot2l    /* else it must be rotary enc 2 left */

keys_handler_push1:               /* handle pushbutton 1 ints */
    MOVI    et, KEY_MENU          /*  translates into menu key */
    JMPI    keys_handler_done

keys_handler_push2:               /* handle pushbutton 2 ints */
    MOVI    et, KEY_MENU          /*  translates into menu key */
    JMPI    keys_handler_done

keys_handler_rot1r:               /* handle rotary enc 1 right ints */
    MOVI    et, KEY_UP            /*  translates into up key */
    JMPI    keys_handler_done

keys_handler_rot1l:               /* handle rotary enc 2 left ints */
    MOVI    et, KEY_DOWN          /*  translates into down key */
    JMPI    keys_handler_done

keys_handler_rot2r:               /* handle rotary enc 2 right ints */
    MOVI    et, KEY_RIGHT         /*  translates into right key */
    JMPI    keys_handler_done

keys_handler_rot2l:               /* handle rotary enc 2 left ints */
    MOVI    et, KEY_LEFT           /*  translates into left key */
    JMPI    keys_handler_done

keys_handler_done:                /* handling completed */
	MOVIA   r8, curr_key          /* save to curr_key */
    STB     et, 0(r8)             /*  the processed key */

    LDW     r8, 0(sp)             /* restore r8 */
    ADDI    sp, sp, WORD_SIZE
    RET                           /* use eret to return from int handler */


/* getKey */
    .global getkey
getkey:
    MOVIA   r8, curr_key      /* return current pending key */
    LDB     r2, 0(r8)
    BEQ     r0, r2, getkey    /* if there is no key (curr_key == r0), block */

	STB     r0, 0(r8) 	      /* clear current key */
    RET                       /* return with current pending key in r2 */

/* key_available */
    .globl key_available
key_available:
    MOVIA   r8, curr_key       /* return current pending key */
    LDB     r2, 0(r8)          /* will be zero (FALSE) if no key is pending */

    RET                        /* return with boolean in r2 */


