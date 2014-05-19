/****************************************************************************/
/*                                                                          */
/*                               VRAM_TEST.S                                */
/*                              VRAM Test Code                              */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   Test code for the VRAM hardware and controller. The only function included
   in this file, main, verifies the correct working of the VRAM system.


   Revision History:
      5/7/14  Santiago Navonne  Initial revision.
      5/14/14 Santiago Navonne  Added additional documentation.
      5/18/14 Santiago Navonne  Completed and passed tests.
*/

/* Includes */
#include "system.h"              /* Base addresses */
#include "vram_test.h"           /* Local test constants */

/* Variables */
    .section .data
    .align WIDTH                 /* set up necessary alignment */
values: .skip VRAM_PERIOD        /* array of random values being tested */

/* Code */
    .section .text

/*
 *  main
 *
 *  Description:       This program performs various tests to verify the
 *                     integrity of the VRAM system. If the tests are passed,
 *                     the program reaches an infinite loop at <tests_good>; if
 *                     a test is failed, the program reaches an infinite loop
 *                     at <error>, with the ID of the test failed in r16, and
 *                     relevant data in other registers as described in the
 *                     code.
 *
 *  Operation:         The function starts by setting up all the necessary
 *                     constants and variables, and seeding the random number
 *                     generation with an arbitrary value.
 *                     Then, it proceeds with the first test, where repeatedly:
 *                     1) the memory is cleared (known value written to every
 *                     word); 2) a block of some length of random values is
 *                     stored in the temporary array for future reference, and
 *                     in the VRAM; 3) the memory before the block is verified
 *                     to still be clear; 4) the memory within the block is
 *                     verified to be identical to the temporary array;
 *                     5) the memory after the block is verified to still be
 *                     clear.
 *                     Next, a fast read/write test is performed. Four known
 *                     variables are written and read to/from an arbitrary 
 *                     place in memory in successive instructions, verifying
 *                     that the VRAM system supports quick read and writes.
 *                     Finally, the refresh cycle is tested by writing a block
 *                     of random values as before, then waiting some arbitrary
 *                     amount of time (>1 minute), and finally verifying that
 *                     the memory contents are still the same.
 *                          
 *  Arguments:         None.
 *
 *  Return Value:      None.
 *
 *  Local Variables:   Several variables are defined throughout the code and
 *                     stored in various registers. The variables are described
 *                     within the code at the point of deifnition.
 *
 *  Shared Variables:  values - temporary array of random values. Read/Write.
 *
 *  Global Variables:  None.
 *
 *  Input:             None.
 *
 *  Output:            None.
 *
 *  Error Handling:    In case of error, the function reaches an inifinite loop
 *                     at <error>.
 *
 *  Limitations:       None.
 *
 *  Algorithms:        None.
 *  Data Structures:   <values> is an array used to temporarily store random
 *                     values written to the VRAM.
 *
 *  Registers Changed: r2, r4, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17
 *                     r18, r19, r20, r21, r22, r23.
 *
 *  Revision History:
 *      5/14/14   Santiago Navonne     Initial revision.
 *      5/18/14   Santiago Navonne     Added blank checking.
 *
 */
    .global main
main:                            /* set up things */
    MOVHI   r4, %hi(SEED)        /* seed random number generator*/
    ORI 	r4, r4, %lo(SEED)    /* using arbitrary value */
    CALL    srand                /* and c function srand */

    XOR     r16, r16, r16        /* r16 is array index */
    MOVIA   r17, values          /* r17 is array base address */
    MOVI    r18, LOOP_PERIOD     /* r18 is length of array */
    MOVHI   r19, %hi(VRAM_BASE)  /* r19 is base of VRAM */
    ORI     r19, r19, %lo(VRAM_BASE)
    MOVHI   r21, %hi(CLEAR_TOP)  /* r21 is the top byte clearing mask */
    ORI 	r21, r21, %lo(CLEAR_TOP)
    XOR     r22, r22, r22        /* r22 is VRAM block index */
    MOVHI   r23, %hi(VRAM_BLOCKS)/* r23 is number of blocks in VRAM */
    ORI 	r23, r23, %lo(VRAM_BLOCKS)
    XOR     r20, r20, r20        /* r20 is test id */

    MOV 	r8, r19 		     /* compute end of VRAM */
    MOVHI   r9, %hi(VRAM_SPAN)
    ORI     r9, r9, %lo(VRAM_SPAN)
    ADD     r8, r8, r9

clear_mem: 		                 /* fill memory with known values */
	MOV 	r9, r19 			 /* save current VRAM address */
	MOVHI   r19, %hi(VRAM_BASE)  /* and go to base of VRAM */
    ORI     r19, r19, %lo(VRAM_BASE)

clear_loop:                      /* do so in a loop */
	STWIO 	r21, (r19)           /* load known value */
	ADDI    r19, r19, WIDTH      /* and go to next word */
	BLT     r19, r8, clear_loop  /* repeat as long as we're within VRAM */

	MOV     r19, r9 			 /* restore VRAM address */

fill_array:                   /* fill the array with LOOP_PERIOD random values */
    CALL    rand              /* generate random number */
    AND     r2, r2, r21       /* clear top bits */
    STWIO   r2, (r17)         /* and store in array */
    ADDI    r17, r17, WIDTH   /* go to next position in memory */
    ADDI    r16, r16, 1       /* and go to next element */
    BLT     r16, r18, fill_array /* if we haven't reached end of array, repeat */
    XOR     r16, r16, r16     /* else clear counter */
    MOVIA   r17, values       /* and reset array base address */

write_values:                 /* write values from array to VRAM */
    LDWIO   r12, (r17)        /* fetch word from array */
    STWIO   r12, (r19)        /* and write it to VRAM */
    ADDI    r17, r17, WIDTH   /* go to next position in array */
    ADDI    r19, r19, WIDTH   /* and in VRAM */
    ADDI    r16, r16, 1       /* then go to next element */
    BLT     r16, r18, write_values /* if we haven't reached end of array, repeat */
    XOR     r16, r16, r16     /* else clear counter */
    MOVIA   r17, values       /* and reset array base address */
    SUBI    r19, r19, VRAM_PERIOD  /* and base of VRAM */
    MOVHI   r8, %hi(VRAM_BASE)/* and go to base of VRAM in r8 */
    ORI     r8, r8, %lo(VRAM_BASE) /* to check blanks */


read_blank:                   /* check that memory before block is blank */
	BGE     r8, r19, read_values   /* start with real values if we reach start */
	LDWIO 	r9, (r8) 		  /* fetch value from VRAM */
	AND 	r9, r9, r21 	  /* clear top bits */
	BNE     r9, r21, error 	  /* report error if not blank */
	ADDI 	r8, r8, WIDTH 	  /* otherwise go to next word */
	JMPI    read_blank 	      /* and check again */

read_values:
    LDWIO   r12, (r17)        /* fetch word from array */
    LDWIO   r13, (r19)        /* fetch word from VRAM */
    AND 	r13, r13, r21     /* clear top bits */
    AND 	r12, r12, r21
    BNE     r12, r13, error   /* if the values don't match, we have an error */
    ADDI    r17, r17, WIDTH   /* go to next position in array */
    ADDI    r19, r19, WIDTH   /* and in VRAM */
    ADDI    r16, r16, 1       /* then go to next element */
    BLT     r16, r18, read_values /* if we haven't reached end of array, repeat */
    XOR     r16, r16, r16     /* else clear counter */
    MOV 	r8, r19 		  /* load position in VRAM to r8 for blank checking */
    MOVHI   r9, %hi(VRAM_BASE)    /* compute end of VRAM */
    ORI     r9, r9, %lo(VRAM_BASE)
    MOVHI   r10, %hi(VRAM_SPAN)   /* equal to base + span */
    ORI     r10, r10, %lo(VRAM_SPAN)
    ADD     r10, r10, r9

read_blanks_after:   		  /* check for blanks after the block */
	BGE 	r8, r10, next_block   /* all good, go to next block */
	LDWIO 	r9, (r8) 		  /* fetch value from VRAM */
	AND 	r9, r9, r21 	  /* clear top bits */
	BNE	 	r9, r21, error
	ADDI 	r8, r8, WIDTH 	  /* otherwise go to next word */
	JMPI    read_blanks_after /* and check again */

next_block: 			      /* get ready for next block */
    ADDI    r22, r22, 1       /* go to next block in VRAM (index)*/
    BLT     r22, r23, clear_mem   /* and if we haven't reach end, repeat */
    ADDI    r20, r20, 1       /* increase id to indicate next test */

fast_rw:                      /* back-to-back write and read values to/from VRAM */
    MOVHI   r19, %hi(VRAM_BASE)   /* should execute at base of VRAM */
    ORI     r19, r19, %lo(VRAM_BASE)
    MOVHI   r8, %hi(VAL1)         /* load values to test into registers */
    ORI 	r8, r8, %lo(VAL1)
    MOVHI   r9, %hi(VAL2)
    ORI 	r9, r9, %lo(VAL2)
    MOVHI   r10, %hi(VAL3)
    ORI 	r10, r10, %lo(VAL3)
    MOVHI   r11, %hi(VAL4)
    ORI 	r11, r11, %lo(VAL4)

    STWIO   r8, 0(r19)        /* save values to memory */
    STWIO   r9, 4(r19)        /* save values to memory */
    LDWIO   r13, 0(r19)       /* read values from memory */
    LDWIO   r14, 4(r19)       /* read values from memory */
    STWIO   r10, 8(r19)       /* save values to memory */
    LDWIO   r15, 8(r19)       /* read values from memory */
    STWIO   r11, 12(r19)      /* save values to memory */
    LDWIO   r16, 12(r19)      /* read values from memory */

fast_check:                   /* check the read values */

    AND     r8, r8, r21 	  /* clear top 2 bytes since our */
    AND     r9, r9, r21       /* memory is actually 24 bits */
    AND     r10, r10, r21
    AND     r11, r11, r21
    AND     r13, r13, r21
    AND     r14, r14, r21
    AND     r15, r15, r21
    AND     r16, r16, r21

    BNE     r13, r8, error    /* compare them to the stored values */
    BNE     r14, r9, error
    BNE     r15, r10, error
    BNE     r16, r11, error

    XOR     r16, r16, r16     /* clear r16 for next test (index) */
    ADDI    r20, r20, 1       /* increase id to indicate next test */
    MOVIA   r17, values       /* load array base address */
    MOVHI   r19, %hi(VRAM_BASE)   /* restore base of VRAM */
    ORI     r19, r19, %lo(VRAM_BASE)
    MOVI    r18, LOOP_PERIOD  /* load length of array */

write_values_wait:            /* write values from array to VRAM again and wait */
    LDWIO   r22, (r17)        /* fetch word from array */
    STWIO   r22, (r19)        /* and write it to VRAM */
    ADDI    r17, r17, WIDTH   /* go to next position in array */
    ADDI    r19, r19, WIDTH   /* and in VRAM */
    ADDI    r16, r16, 1       /* then go to next element */
    BLT     r16, r18, write_values_wait 
                              /* if we haven't reached end of array, repeat */

    XOR     r16, r16, r16     /* else clear counter */
    MOVIA   r17, values       /* load array base address */
    SUBI    r19, r19, VRAM_PERIOD /* and base of VRAM */
    MOVHI   r4, %hi(WAIT_TIME) /* and wait for a while */
    ORI     r4, r4, %lo(WAIT_TIME)
    CALL    usleep             /* using c function usleep */

read_values_wait:           /* read them back and compare */
    LDWIO   r11, (r17)      /* fetch word from array */
    LDWIO   r13, (r19)      /* fetch word from VRAM */
    AND 	r13, r13, r21   /* clear top bits */
    AND 	r11, r11, r21   /* clear top bits */
    BNE     r11, r13, error /* if the values don't match, we have an error */
    ADDI    r17, r17, WIDTH /* go to next position in array */
    ADDI    r19, r19, WIDTH /* and in VRAM */
    ADDI    r16, r16, 1     /* then go to next element */
    BLT     r16, r18, read_values_wait 
                            /* if we haven't reached end of array, repeat */

tests_good:                 /* get here if no error */
	NOP                     /* need a NOP to set breakpoint */
 	JMPI    tests_good      /* and stay here */

error:                      /* get here in case of error */
	NOP                     /* need a NOP to set breakpoint */
    JMPI    error           /* and stay here */
