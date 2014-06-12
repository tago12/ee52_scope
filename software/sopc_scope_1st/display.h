/****************************************************************************/
/*                                                                          */
/*                                DISPLAY.H                                 */
/*                       Display Interface Definitions                      */
/*                               Include File                               */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   This file contains the constants for the display interface routines. The 
   file includes hardware constants related to the memory layout of the display
   are in the VRAM.


   Revision History:
      6/3/14  Santiago Navonne  Initial revision.
*/
      
/* VRAM-related constants */
#define    ROW_SIZE     512
#define    REMAINDER 	(ROW_SIZE-SIZE_X)*WORD_SIZE
#define    ROW_ADDR_SHIFT 11
#define    COL_ADDR_SHIFT 2
