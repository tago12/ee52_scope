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
*/
/* Includes */
#include "system.h" /* Base addresses */
#include "vram_test.h" /* File constants */

/* Variables */
    .section .data  /* No alignment necessary: variables are bytes */
values: .skip VRAM_PERIOD   /* Array of random values being tested */

/* Code */
    .section .text

/*
 *  main
 *
 *  Description:       TODO
 *
 *  Operation:         TODO
 *                          
 *  Arguments:         None.
 *
 *  Return Value:      None.
 *
 *  Local Variables:   None.
 *
 *  Shared Variables:  None.
 *
 *  Global Variables:  None.
 *
 *  Input:             TODO
 *
 *  Output:            TODO
 *
 *  Error Handling:    TODO
 *
 *  Limitations:       None.
 *
 *  Algorithms:        None.
 *  Data Structures:   TODO
 *
 *  Registers Changed: TODO
 *
 *  Revision History:
 *      5/14/14   Santiago Navonne     Initial revision.
 *
 */
    .global main
main:               /* set everything up for first test */
    XOR     r16, r16, r16        /* r16 is array index */
    MOVIA   r17, values          /* r17 is array base address */
    MOVI    r18, LOOP_PERIOD     /* r18 is length of array */
    MOVHI   r19, %hi(VRAM_BASE)  /* r19 is base of VRAM */
    ORI     r19, r19, %lo(VRAM_BASE)
    ORHI    r21, r21, CLEAR_TOP  /* r21 is the top byte clearing mask */
    XOR     r22, r22, r22        /* r22 is VRAM block index */
    MOVHI   r23, %hi(VRAM_BLOCKS)/* r23 is number of blocks in VRAM */
    ORI 	r23, r23, %lo(VRAM_BLOCKS)
    XOR     r20, r20, r20        /* r20 is test id */
    MOVHI   r4, %hi(SEED)        /* seed random number generator*/
    ORI 	r4, r4, %lo(SEED)
    CALL    srand

fill_array:         /* fill the array with LOOP_PERIOD random values */
    CALL    rand                 /* generate random number */
    AND     r2, r2, r21          /* clear top bits */
    STWIO   r2, (r17)            /* and store in array */
    ADDI    r17, r17, WIDTH      /* go to next position in memory */
    ADDI    r16, r16, 1          /* and go to next element */
    BLT     r16, r18, fill_array /* if we haven't reached end of array, repeat */
    XOR     r16, r16, r16        /* else clear counter */
    MOVIA   r17, values          /* and reset array base address */

write_values:       /* write values from array to VRAM */
    LDWIO   r12, (r17)           /* fetch word from array */
    STWIO   r12, (r19)           /* and write it to VRAM */
    ADDI    r17, r17, WIDTH      /* go to next position in array */
    ADDI    r19, r19, WIDTH      /* and in VRAM */
    ADDI    r16, r16, 1          /* then go to next element */
    BLT     r16, r18, write_values /* if we haven't reached end of array, repeat */
    XOR     r16, r16, r16        /* else clear counter */
    MOVIA   r17, values          /* and reset array base address */
    SUBI    r19, r19, VRAM_PERIOD/* and base of VRAM */

read_values:        /* read values from VRAM and compare with array */
    LDWIO   r12, (r17)           /* fetch word from array */
    LDWIO   r13, (r19)           /* fetch word from VRAM */
    BNE     r12, r13, error      /* if the values don't match, we have an error */
    ADDI    r17, r17, WIDTH      /* go to next position in array */
    ADDI    r19, r19, WIDTH      /* and in VRAM */
    ADDI    r16, r16, 1          /* then go to next element */
    BLT     r16, r18, read_values/* if we haven't reached end of array, repeat */
    XOR     r16, r16, r16        /* else clear counter */

    ADDI    r22, r22, 1          /* go to next block in VRAM (index)*/
    BLT     r22, r23, fill_array /* and if we haven't reach end, repeat */
    ADDI    r20, r20, 1          /* increase id to indicate next test */

fast_write:         /* back-to-back write values to VRAM */
    MOVHI   r19, %hi(VRAM_BASE)  /* should execute at base of VRAM */
    ORI     r19, r19, %lo(VRAM_BASE)
    MOVHI   r8, %hi(VAL1)        /* load values to test into registers */
    ORI 	r8, r8, %lo(VAL1)
    MOVHI   r9, %hi(VAL2)
    ORI 	r9, r9, %lo(VAL2)
    MOVHI   r10, %hi(VAL3)
    ORI 	r10, r10, %lo(VAL3)
    MOVHI   r11, %hi(VAL4)
    ORI 	r11, r11, %lo(VAL4)

    STWIO   r8, 0(r19)           /* save values to memory */
    STWIO   r9, 1(r19)
    STWIO   r10, 2(r19)
    STWIO   r11, 3(r19)

fast_read:          /* and read them back, quickly */
    LDWIO   r13, 0(r19)          /* read values from memory */
    LDWIO   r14, 1(r19)
    LDWIO   r15, 2(r19)
    LDWIO   r16, 3(r19)

    /* TEMP TRUNCATE VALUES TODO
    ANDI    r8, r8, 0x00ff
    ANDI    r9, r9, 0x00ff
    ANDI    r10, r10, 0x00ff
    ANDI    r11, r11, 0x00ff
    ANDI    r13, r13, 0x00ff
    ANDI    r14, r14, 0x00ff
    ANDI    r15, r15, 0x00ff
    ANDI    r16, r16, 0x00ff */

    BNE     r13, r8, error       /* compare them to the stored values */
    BNE     r14, r9, error
    BNE     r15, r10, error
    BNE     r16, r11, error

    XOR     r16, r16, r16        /* clear r16 for next test (index) */
    ADDI    r20, r20, 1          /* increase id to indicate next test */
    MOVIA   r17, values          /* load array base address */
    MOVHI   r19, %hi(VRAM_BASE)  /* restore base of VRAM */
    ORI     r19, r19, %lo(VRAM_BASE)
    MOVI    r18, LOOP_PERIOD     /* load length of array */

write_values_wait:  /* write values from array to VRAM again and wait */
    LDWIO   r21, (r17)           /* fetch word from array */
    STWIO   r21, (r19)           /* and write it to VRAM */
    ADDI    r17, r17, WIDTH      /* go to next position in array */
    ADDI    r19, r19, WIDTH      /* and in VRAM */
    ADDI    r16, r16, 1          /* then go to next element */
    BLT     r16, r18, write_values_wait 
                                 /* if we haven't reached end of array, repeat */

    XOR     r16, r16, r16        /* else clear counter */
    MOVIA   r17, values          /* load array base address */
    SUBI    r19, r19, VRAM_PERIOD/* and base of VRAM */
    MOVHI   r4, %hi(WAIT_TIME)   /* and wait for a while */
    ORI     r4, r4, %lo(WAIT_TIME)
    CALL    usleep               /* using usleep */

read_values_wait:   /* read them back and compare */
    LDWIO   r11, (r17)           /* fetch word from array */
    LDWIO   r13, (r19)           /* fetch word from VRAM */
    BNE     r11, r13, error      /* if the values don't match, we have an error */
    ADDI    r17, r17, WIDTH      /* go to next position in array */
    ADDI    r19, r19, WIDTH      /* and in VRAM */
    ADDI    r16, r16, 1          /* then go to next element */
    BLT     r16, r18, read_values_wait 
                                 /* if we haven't reached end of array, repeat */

tests_good:         /* get here if no error */
 	JMPI    tests_good           /* and stay here */

error:              /* get here in case of error */
    JMPI    error                /* and stay here */