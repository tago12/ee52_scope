/****************************************************************************/
/*                                                                          */
/*                                GENERAL.H                                 */
/*                         General Assembly Definitions                     */
/*                               Include File                               */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   This file contains general constants for the assembly functions within the
   EE/CS 52 Digital Oscilloscope project.


   Revision History:
      5/30/14  Santiago Navonne  Initial revision.
*/

/* General constants */
#define    FALSE         0           /* Zero is false */
#define    TRUE          1           /* Non-zero is true */
#define    WORD_SIZE     4           /* A word is 4 bytes */
#define    NEG_WORD_SIZE -4          /* Include negative to facilitate subtraction */

/* PIO register constants */
#define    EDGE_CAP_OF   3*WORD_SIZE /* Offset of edge capture PIO register */
#define    INTMASK_OF    2*WORD_SIZE /* Offset of interrupt mask PIO register */
#define    ENABLE_ALL    0b00111111  /* Enable interrupts from all six sources */
