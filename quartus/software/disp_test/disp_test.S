/****************************************************************************/
/*                                                                          */
/*                               DISP_TEST.S                                */
/*                             Display Test Code                            */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   Test code for the display hardware and controller. The only function
   included in this file, main, verifies the correct working of the display.


   Revision History:
      5/20/14  Santiago Navonne  Initial revision.
*/

/* Includes */
#include "system.h"              /* Base addresses */
#include "disp_test.h"           /* Local test constants */

/* Variables */
    .section .data
    .align WIDTH                 /* set up necessary alignment */
values: .skip DISP_ROW           /* array of random values being tested */

/* Code */
    .section .text

/*
 *  main
 *
 */
    .global main
main:                            /* set up things */

    XOR     r16, r16, r16        /* r16 is array index */
    MOVIA   r17, values          /* r17 is array base address */
    MOVI    r18, LOOP_PERIOD     /* r18 is length of array */
    MOVHI   r19, %hi(VRAM_BASE)  /* r19 is base of VRAM */
    ORI     r19, r19, %lo(VRAM_BASE)
    MOVHI   r21, %hi(CLEAR_TOP)  /* r21 is the top byte clearing mask */
    ORI 	r21, r21, %lo(CLEAR_TOP)
    XOR     r22, r22, r22        /* r22 is VRAM block index */
    MOVHI   r23, %hi(HEIGHT)     /* r23 is display height */
    ORI 	r23, r23, %lo(HEIGHT)
    MOVHI 	r20, %hi(INITIAL) 	 /* r20 is current value */
    ORI 	r20, r20, %lo(INITIAL)
    MOVI    r8, SUB_STEP
    MOVHI 	r10, %hi(MIDPOINT) 	 /* r10 is horizontal midpoint*/
    ORI 	r10, r10, %lo(MIDPOINT)
    MOVHI 	r11, %hi(HALF)    	 /* r10 is vertical midpoint*/
    ORI 	r11, r11, %lo(HALF)

fill_array:                   /* fill the array with rainbow values */
    STWIO   r20, (r17)        /* store value in array */
    ADDI    r17, r17, WIDTH   /* go to next position in memory */
    ADDI    r16, r16, 1       /* and go to next element */
    BNE 	r16, r10, no_change /* change colors at midpoint */
    MOVHI 	r20, %hi(FINAL)
    ORI 	r20, r20, %lo(FINAL)
no_change:
    BLT     r16, r18, fill_array /* if we haven't reached end of array, repeat */
    XOR     r16, r16, r16     /* else clear counter */
    MOVIA   r17, values       /* and reset array base address */

    XOR     r20, r20, r20

write_values:                 /* write values from array to VRAM */
    LDWIO   r12, (r17)        /* fetch word from array */
    XOR     r12, r12, r20	  /* xor mask */
    STWIO   r12, (r19)        /* and write it to VRAM */
    ADDI    r17, r17, WIDTH   /* go to next position in array */
    ADDI    r19, r19, WIDTH   /* and in VRAM */
    ADDI    r16, r16, 1       /* then go to next element */
    BLT     r16, r18, write_values /* if we haven't reached end of array, repeat */
    XOR     r16, r16, r16     /* else clear counter */
    MOVIA   r17, values       /* and reset array base address */

next_block: 			      /* get ready for next block */
    ADDI    r22, r22, 1       /* go to next block in VRAM (index)*/
    BNE 	r22, r11, no_block_change /* change colors at midpoint */
    MOVHI 	r20, %hi(MASK)
    ORI 	r20, r20, %lo(MASK)

no_block_change:
    BLT     r22, r23, write_values  /* and if we haven't reach end, repeat */

done:
	NOP
	JMPI 	done
