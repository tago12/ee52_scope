/****************************************************************************/
/*                                                                          */
/*                                  KEYS.H                                  */
/*                          Key Handlers Definitions                        */
/*                               Include File                               */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   This file contains the constants for the key press and rotary encoder 
   handler routines. The file includes interrupt masks used to determine the
   source of interrupts; offsets of the PIO registers.


   Revision History:
      5/7/14  Santiago Navonne  Initial revision.
      5/14/14 Santiago Navonne  Added additional documentation.
*/
      
/* Interrupt masks */
#define    PUSH1_MASK    0b00100000  /* Pushbutton 1 mask */
#define    PUSH2_MASK    0b00010000  /* Pushbutton 2 mask */
#define    ROT1R_MASK    0b00000100  /* Rotary encoder 1, right mask */
#define    ROT1L_MASK    0b00001000  /* Rotary encoder 1, left mask */
#define    ROT2R_MASK    0b00000001  /* Rotary encoder 2, right mask */
#define    ROT2L_MASK    0b00000010  /* Rotary encoder 2, left mask */

#define    ENABLE_ALL    0b00111111  /* Enable interrupts from all six sources */

/* PIO register offsets */
#define    EDGE_CAP_OF   3*WORD_SIZE /* Offset of edge capture PIO register */
#define    INTMASK_OF    2*WORD_SIZE /* Offset of interrupt mask PIO register */