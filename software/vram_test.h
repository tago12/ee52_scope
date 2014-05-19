/****************************************************************************/
/*                                                                          */
/*                               VRAM_TEST.H                                */
/*                         VRAM Test Code Definitions                       */
/*                               Include File                               */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   This file contains the constants for the VRAM hardware and controller test
   code. The constants are divided into VRAM specific data and arbitrary test
   values.


   Revision History:
      5/14/14  Santiago Navonne  Initial revision.
*/

/* VRAM and loop data */
#define VRAM_SIZE   262144        /* Size of the VRAM in words. */
#define LOOP_PERIOD 256           /* Divide into 256 byte blocks. */
#define VRAM_BLOCKS VRAM_SIZE/LOOP_PERIOD
                                  /* Number of blocks is size / loop period. */
#define WIDTH       4             /* Memory width in bytes. */
#define CLEAR_TOP   0xFF00        /* Mask to clear top byte. */
#define VRAM_PERIOD LOOP_PERIOD*WIDTH

/* Arbitrary values */
#define VAL1 0x00CAFEFF           /* Arbitrary test values for back-to-back */
#define VAL2 0x00FBABEF           /* operations. */
#define VAL3 0x00FFDEAD
#define VAL4 0x00BEFFEF
#define SEED 0x8BADFOOD

#define WAIT_TIME 1*60*1000000    /* Wait time is 1 minute in microseconds. */
