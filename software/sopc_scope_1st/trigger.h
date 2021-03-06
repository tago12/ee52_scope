/****************************************************************************/
/*                                                                          */
/*                                TRIGGER.H                                 */
/*                   Data Sampling and Triggering Definitions               */
/*                               Include File                               */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   This file contains the constants for the data sampling and triggering
   routines. The file includes hardware constants used to interact with the
   triggering logic; masks used to access hardware registers; PIO register
   offsets; PIO register addresses; and default configuration values.


   Revision History:
      5/30/14  Santiago Navonne  Initial revision.
*/

/* Hardware constants */
#define    CLK_FREQ      38000000    /* System clock frequency in Hz */
#define    FIFO_SIZE     512  		 /* Size of sample FIFO in words */
#define    TRIG_LEVEL_SHIFT 1        /* Shift trig level left once to convert [0, 127] -> [0, 255] */
#define    CALIBRATION   13          /* DC offset of front end */
#define    DELAY_CONSTANT   1        /* Hardware delay offset */
#define    MAXDELAY      0xFFFFFFFF - 1 - DELAY_CONSTANT
                                     /* Maximum delay must take hardware delay offset into account */

/* Masks */
#define    FIFO_INT      1           /* FIFO interrupt bit */
#define    AUTO_TRIG_BIT 1<<0        /* Auto trigger bit is bit 0 in trigger control register */
#define    SLOPE_BIT     1<<1        /* Slope control bit is bit 1 in trigger control register */
#define    FIFO_WE_BIT   1<<2        /* FIFO write enable bit is bit 2 in trigger control register */
#define    FIFO_READ_BIT 1<<3        /* FIFO read clock bit is bit 3 in trigger control register */
#define    FIFO_RESET_BIT 1<<4       /* FIFO reset bit is bit 4 in trigger control register */

/* PIO register offsets */
#define    EDGE_CAP_OF   3*WORD_SIZE /* Offset of edge capture PIO register */
#define    INTMASK_OF    2*WORD_SIZE /* Offset of interrupt mask PIO register */
#define    SET_OF        4*WORD_SIZE /* Offset of bit set PIO register */
#define    CLR_OF        5*WORD_SIZE /* Offset of bit clear PIO register */

/* PIO offset locations */
#define    TRIG_CTRL_SET TRIG_CTRL_BASE+SET_OF /* Location of trigger control set bit register */
#define    TRIG_CTRL_CLR TRIG_CTRL_BASE+CLR_OF /* Location of trigger control clear bit register */

/* Default values */
#define    TRIG_CTRL_DEF 0b00000111 /* Initialize control register to: low read clock, inactive */
      								/* (high) write enable, negative slope, auto trigger */
#define    TRIG_DELAY_DEF  0+DELAY_CONSTANT /* Default trigger delay (desired delay + DELAY_CONSTANT) */
#define    TRIG_LEVEL_DEF  128      /* Default trigger level */
#define    DEFAULT_SAMPLE_RATE 19000000     /* Default sample rate */
#define    TRIG_PERIOD_DEF CLK_FREQ/DEFAULT_SAMPLE_RATE  /* Translates into this trigger period */

