/****************************************************************************/
/*                                                                          */
/*                                TRIGGER.H                                 */
/*                   Data sampling and triggering Definitions               */
/*                               Include File                               */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   TODO
   This file contains the constants for the key press, rotary encoder, and 
   touch screen handler routines. The file includes interrupt masks used to
   determine the source of interrupts; offsets of the PIO registers; and
   some general constants.


   Revision History:
      5/30/14  Santiago Navonne  Initial revision.
*/

/* Hardware constants */
#define    CLK_FREQ      38000000    /* System clock frequency in Hz */
#define    SEC_IN_NS     1000000000  /* 1 second in nanoseconds */
#define    CLK_PERIOD    SEC_IN_NS/CLK_FREQ	 /* System clock period in ns */
#define    FIFO_SIZE     512  		 /* Size of sample FIFO in words */
#define    TRIG_LEVEL_SHIFT 1        /* Shift trig level left once to convert [0, 127] -> [0, 255] */

/* Masks */
#define    FIFO_INT      1           /* FIFO interrupt bit */
#define    AUTO_TRIG_BIT 1<<0        /* Auto trigger bit is bit 0 in trigger control register */
#define    SLOPE_BIT     1<<1        /* Slope control bit is bit 1 in trigger control register */
#define    FIFO_WE_BIT   1<<2        /* FIFO write enable bit is bit 2 in trigger control register */
#define    FIFO_READ_BIT 1<<3        /* FIFO read clock bit is bit 3 in trigger control register */

/* PIO register offsets */
#define    EDGE_CAP_OF   3*WORD_SIZE /* Offset of edge capture PIO register */
#define    INTMASK_OF    2*WORD_SIZE /* Offset of interrupt mask PIO register */
#define    SET_OF        4*WORD_SIZE /* OFfset of bit set PIO register */
#define    CLR_OF        5*WORD_SIZE /* Offset of bit clear PIO register */

/* PIO offset locations */
#define    TRIG_CTRL_SET TRIG_CTRL_BASE+SET_OF /* Location of trigger control set bit register */
#define    TRIG_CTRL_CLR TRIG_CTRL_BASE+CLR_OF /* Location of trigger control clear bit register */

/* Default values */
#define    TRIG_CTRL_DEF 0b00000111 /* Initialize control register to: low read clock, inactive */
      								/* (high) write enable, positive slope, auto trigger */

