/****************************************************************************/
/*                                                                          */
/*                                 TRIGGER.S                                */
/*                       Data sampling and triggering                       */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   TODO
   Key, rotary encoder, and touch screen control routines for the EE/CS 52
   Digital Oscilloscope project. Function definitions are included in this file,
   and are laid out as follows:
    - keys_init: Initializes the key handler's shared variables, and enables
                 interrupts from the required sources, effectively preparing
                 the user input section for use;
    - keys_handler: Handles key press (and rotary encoder turn) interrupts;
    - getkey: Returns the currently pending user action, blocking if none is
              available.
    - key_available: Checks whether a user action is currently pending.
    - TODO: add touchscreen functions


   Revision History:
      5/29/14 Santiago Navonne  Initial revision.
*/

/* Includes */
#include "general.h"  /* General assembly constants */
#include "system.h"   /* Base addresses */
#include "interfac.h" /* Software interface definitions */
#include "trigger.h"  /* Local constants */


/* Variables */
    .section .data        /* No alignment necessary: variables are bytes */
sample_pending: .byte 0   /* Logical value: whether a sample is pending */
sample_started: .byte 0   /* Logical value: whether a sample was started */
sample: .skip FIFO_SIZE   /* Sample buffer */

    .section .text        /* Code starts here */

/*
 *  set_sample_rate
 *
 *  Description:       TODO
 *
 *  Operation:         TODO
 *                          
 *  Arguments:         samples_per_sec - positive integer indicating the sample rate
 *                                       in samples per second (r4).
 *
 *  Return Value:      sample_num - positive integer, number of samples that will be
 *                                  acquired at the desired rate (r2).
 *
 *  Local Variables:   None. TODO
 *
 *  Shared Variables:  None. TODO
 *
 *  Global Variables:  None.
 *
 *  Input:             None. TODO
 *
 *  Output:            None. TODO
 *
 *  Error Handling:    None. TODO
 *
 *  Limitations:       None. TODO
 *
 *  Algorithms:        None.
 *  Data Structures:   None.
 *
 *  Registers Changed: r2, r4, r8, r9.
 *
 *  Revision History:
 *      5/29/14   Santiago Navonne     Initial revision.
 *
 */
    .global set_sample_rate
set_sample_rate:
    MOVHI   r8, %hi(SEC_IN_NS)     /* load value of one second in ns */
    OR      r8, r8, %lo(SEC_IN_NS) /*  to find desired period in ns by */
    DIVU    r9, r8, r4             /*  dividing 1 second by the desired rate */
    MOVHI   r8, %hi(CLK_PERIOD)    /* load system clock period in ns to */
    OR      r8, r8, %lo(CLK_PERIOD)/* then find number of system clocks that takes */
    DIVU    r9, r9, r8             /*  by dividing the result by the sys clk period */
    MOVHI   r8, %hi(TRIG_PERIOD_BASE)     /* load period data register address to */
    OR      r8, r8, %lo(TRIG_PERIOD_BASE) /*  finally save result to trigger period */
    STWIO   r9, (r8)               /*  data, effectively setting the sample rate */

    MOVI    r2, FIFO_SIZE          /* number of samples acquired is always size of fifo */
    RET                            /* which is returned in r2 */



/*
 *  set_trigger
 *
 *  Description:       TODO
 *
 *  Operation:         TODO
 *                          
 *  Arguments:         level - trigger level to be configured, as a value between 0 and
 *                             127, where 0 is the most negative level, and 127 is the
 *                             most positive level (r4).
 *                     slope - desired trigger slope; 1 for positive slope, 0 for
 *                             negative slope (r5).
 *
 *  Return Value:      None.
 *
 *  Local Variables:   None. TODO
 *
 *  Shared Variables:  None. TODO
 *
 *  Global Variables:  None.
 *
 *  Input:             None. TODO
 *
 *  Output:            None. TODO
 *
 *  Error Handling:    None. TODO
 *
 *  Limitations:       None. TODO
 *
 *  Algorithms:        None.
 *  Data Structures:   None.
 *
 *  Registers Changed: r4, r8, r9, r10.
 *
 *  Revision History:
 *      5/29/14   Santiago Navonne     Initial revision.
 *
 */
    .global set_trigger
set_trigger:
    MOVHI   r10, %hi(TRIG_LEVEL_BASE) /* load trigger level register address to update */
    OR      r10, r10, %lo(TRIG_LEVEL_BASE) /* the desired trigger level */
    MOVI    r9, TRIG_LEVEL_SHIFT   /* shift the passed argument left as needed to */
    SHLL    r4, r4, r9             /* make sure we output a full byte */

    MOVHI   r8, %hi(TRIG_CTRL_CLR) /* load control register bit clear address to */
    OR      r8, r8, %lo(TRIG_CTRL_CLR) /*  initially assume that we want to set  */
    MOVI    r9, WORD_SIZE          /*  slope to negative (clear the bit) */
    SHLL    r8, r8, r9             /* subtract argument multiplied by word size */
    SUB     r8, r8, r5             /* effectively moving to set bit register if enabling */
                                   /*  positive slope */

    MOVI    r9, SLOPE_BIT          /* finally write the appropriate bit to the register */
    STWIO   r9, (r8)               /* enabling or disabling the bit as needed */

    STWIO   r4, (r10)              /* and output desired trigger level */

    RET                            /* all done, so return */


/*
 *  set_delay
 *
 *  Description:       TODO
 *
 *  Operation:         TODO
 *                          
 *  Arguments:         delay - trigger delay from trigger event in number of samples (r4).
 *
 *  Return Value:      None.
 *
 *  Local Variables:   None. TODO
 *
 *  Shared Variables:  None. TODO
 *
 *  Global Variables:  None.
 *
 *  Input:             None. TODO
 *
 *  Output:            None. TODO
 *
 *  Error Handling:    None. TODO
 *
 *  Limitations:       None. TODO
 *
 *  Algorithms:        None.
 *  Data Structures:   None.
 *
 *  Registers Changed: TODO.
 *
 *  Revision History:
 *      5/29/14   Santiago Navonne     Initial revision.
 *
 */
    .global set_delay
set_delay:
    /* TODO */
    RET                            /* all done, so return */


/*
 *  start_sample
 *
 *  Description:       TODO
 *
 *  Operation:         TODO
 *                          
 *  Arguments:         auto_trigger - TRUE if sampling should be started
 *                                    automatically (i.e. as soon as possible),
 *                                    FALSE if it should be started on a trigger
 *                                    event (r4).
 *
 *  Return Value:      None.
 *
 *  Local Variables:   None. TODO
 *
 *  Shared Variables:  None. TODO
 *
 *  Global Variables:  None.
 *
 *  Input:             None. TODO
 *
 *  Output:            None. TODO
 *
 *  Error Handling:    None. TODO
 *
 *  Limitations:       None. TODO
 *
 *  Algorithms:        None.
 *  Data Structures:   None.
 *
 *  Registers Changed: r8, r9.
 *
 *  Revision History:
 *      5/29/14   Santiago Navonne     Initial revision.
 *
 */
    .global start_sample
start_sample:
    MOVIA   r8, sample_started     /* fetch current started value to see if this call */
    LDB     r9, (r8)               /* should be ignored */
    BNE     r0, r9, start_sample_done /*  which is when value is not zero */
    MOVI    r9, TRUE               /* if everything is good, signal start */
    STB     r9, (r8)               /* by updating the variable's value */

    MOVHI   r8, %hi(TRIG_CTRL_CLR) /* load trigger control bit clear reg address */
    OR      r8, r8, %lo(TRIG_CTRL_CLR) /* assuming we'll clear auto trigger bit */
    MOVI    r9, WORD_SIZE
    SHLL    r8, r8, r9             /* subtract argument multiplied by word size */
    SUB     r8, r8, r5             /* effectively moving to set bit register if enabling */
                                   /*  auto trigger*/
    MOVI    r9, AUTO_TRIG_BIT      /* store auto trigger bit in configured register */
    STWIO   r9, (r8)               /* enabling or disabling it as needed */

    MOVHI   r8, %hi(TRIG_CTRL_CLR) /* load trigger control bit clear reg address */
    OR      r8, r8, %lo(TRIG_CTRL_CLR) /* to clear fifo write enable (make active) */
    MOVI    r9, FIFO_WE_BIT        /* which allows the fifo to be filled with samples */
    STWIO   r9, (r8)               /* effectively starting a sample */

start_sample_done:
    RET                            /* all done, so return */


/*
 *  sample_done
 *
 *  Description:       TODO
 *
 *  Operation:         TODO
 *                          
 *  Arguments:         None.
 *
 *  Return Value:      *samples - pointer to bytes acquired in sample if any; NULL
 *                                otherwise (r2).
 *
 *  Local Variables:   None. TODO
 *
 *  Shared Variables:  None. TODO
 *
 *  Global Variables:  None.
 *
 *  Input:             None. TODO
 *
 *  Output:            None. TODO
 *
 *  Error Handling:    None. TODO
 *
 *  Limitations:       None. TODO
 *
 *  Algorithms:        None.
 *  Data Structures:   None.
 *
 *  Registers Changed: r2, r8, r9, r10, r11, r12, r13, r14.
 *
 *  Revision History:
 *      5/29/14   Santiago Navonne     Initial revision.
 *
 */
    .global sample_done
sample_done:
    MOVIA   r8, sample_pending     /* fetch current pending value to see if this call */
    LDB     r9, (r8)               /* should be ignored */
    BEQ     r0, r9, sample_done_null /*  which is when value is zero */

    MOVHI   r12, %hi(FIFO_DATA)    /* load fifo data register address */
    OR      r12, r12, %lo(FIFO_DATA) /* to actually read data from fifo */
    MOVIA   r13, sample            /* load array address to store samples */
    MOV     r2, r13                /* and also use it as return value (pointer) */
    MOV     r10, r0                /* and start a counter at 0 for looping */
    MOVI    r11, FIFO_SIZE         /* which will stop at FIFO_SIZE */
    MOVI    r9, FIFO_READ_BIT      /* finally load read clk bit for big banging */

get_data:
    STWIO   r9, (r8)               /* send read clock high to output sample */
    ADDI    r8, r8, WORD_SIZE      /* and move to clear register: will send low next time */
    NOP                            /* wait for sample to actually come through */
    
    LDWIO   r14, (r12)             /* read sample from fifo */
    STWIO   r14, (r13)             /* and store it in the sample array */

    STWIO   r9, (r8)               /* send read clock low to prepare for next sample */
    SUBI    r8, r8, WORD_SIZE      /* and move to set register: will send high next time  */

    ADDI    r10, r10, 1            /* increment counter */
    ADDI    r9, r9, 1              /* and sample pointer */
    BNE     r10, r11, get_data     /* and keep getting data until we reach end */
    JMPI    sample_done_done       /* otherwise we're all done */

sample_done_null:                  /* execution aborted (no sample available) */
    MOV     r2, r0                 /* simply return null pointer */

sample_done_done:                  /* all done */
    RET                            /* so return */


/*
 *  sample_handler
 *
 *  Description:       TODO
 *
 *  Operation:         TODO
 *                          
 *  Arguments:         None.
 *
 *  Return Value:      None.
 *
 *  Local Variables:   None. TODO
 *
 *  Shared Variables:  None. TODO
 *
 *  Global Variables:  None.
 *
 *  Input:             None. TODO
 *
 *  Output:            None. TODO
 *
 *  Error Handling:    None. TODO
 *
 *  Limitations:       None. TODO
 *
 *  Algorithms:        None.
 *  Data Structures:   None.
 *
 *  Registers Changed: r8, r9.
 *
 *  Revision History:
 *      5/29/14   Santiago Navonne     Initial revision.
 *
 */
    .global sample_handler
sample_handler:
    MOVIA   r8, sample_pending     /* mark sample_pending as true to indicate  */
	MOVI 	r9, TRUE  			   /* a sample is ready for processing */
    STB     r9, (r8)               

    MOVHI   r8, %hi(TRIG_CTRL_SET) /* load trigger control bit set reg address */
    OR      r8, r8, %lo(TRIG_CTRL_SET) /* to set fifo write enable (make inactive) */
    MOVI    r9, FIFO_WE_BIT        /* which prevents the fifo from being filled again */
    STWIO   r9, (r8)               /* effectively stopping a sample */

    MOVHI   r8, %hi(FIFO_FULL_BASE)/* write to edge capture register */
    ORI 	r8, r8, %lo(FIFO_FULL_BASE) /* to send EOI */
	MOVI 	r9, FIFO_INT
    STWIO   r9, EDGE_CAP_OF(r8)

    RET                            /* all done, so return */


/*
 *  trigger_init
 *
 *  Description:       TODO
 *
 *  Operation:         TODO
 *                          
 *  Arguments:         None.
 *
 *  Return Value:      None.
 *
 *  Local Variables:   None. TODO
 *
 *  Shared Variables:  None. TODO
 *
 *  Global Variables:  None.
 *
 *  Input:             None. TODO
 *
 *  Output:            None. TODO
 *
 *  Error Handling:    None. TODO
 *
 *  Limitations:       None. TODO
 *
 *  Algorithms:        None.
 *  Data Structures:   None.
 *
 *  Registers Changed: r4, r5, r6, r7, r8, r9.
 *
 *  Revision History:
 *      5/29/14   Santiago Navonne     Initial revision.
 *
 */
    .global trigger_init
trigger_init:
    MOVIA   r8, sample_pending     /* mark sample_pending as false to indicate  */
    STB     r0, (r8)               /* no sample is ready for processing */
	MOVIA	r8, sample_started     /* mark sample_started as false to indicate  */
    STB 	r0, (r8) 		       /* no sample was started yet */

    MOVHI   r8, %hi(TRIG_CTRL_SET) /* load trigger control bit set reg address */
    OR      r8, r8, %lo(TRIG_CTRL_SET) /* to set default value */
    MOVI    r9, TRIG_CTRL_DEF      /* which loads default WE, read clock, auto */
    STWIO   r9, (r8)               /* trigger, and slope values */

								   /* register interrupt handler */
    MOV     r4, r0                 /* argument ic_id is ignored */
    MOVI    r5, FIFO_FULL_IRQ      /* second arg is IRQ num */
    MOVIA   r6, sample_handler     /* third arg is int handler */
    MOV     r7, r0                 /* fourth arg is data struct (null) */
    ADDI    sp, sp, NEG_WORD_SIZE  /* fifth arg goes on stack */
    STW     r0, 0(sp)              /*  and is ignored (so 0) */
    CALL    alt_ic_isr_register    /* finally, call setup function */
    ADDI    sp, sp, WORD_SIZE      /* clean up stack after call */

	MOVHI   r8, %hi(FIFO_FULL_BASE)/* write to interrupt mask register */
    ORI 	r8, r8, %lo(FIFO_FULL_BASE) /* to enable interrupts */
	MOVI 	r9, FIFO_INT 		   /* and to edge capture register to send */
    STWIO   r9, EDGE_CAP_OF(r8)    /* EOI to pending interrupts */
    STWIO   r9, INTMASK_OF(r8)


    RET                            /* all done, so return */