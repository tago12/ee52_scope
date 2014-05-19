/* keys include file */
#define    PUSH1_MASK    0b00100000  /* Pushbutton 1 mask */
#define    PUSH2_MASK    0b00010000  /* Pushbutton 2 mask */
#define    ROT1R_MASK    0b00000100  /* Rotary encoder 1, right mask */
#define    ROT1L_MASK    0b00001000  /* Rotary encoder 1, left mask */
#define    ROT2R_MASK    0b00000001  /* Rotary encoder 2, right mask */
#define    ROT2L_MASK    0b00000010  /* Rotary encoder 2, left mask */

#define    ENABLE_ALL    0b00111111  /* Enable interrupts from all six sources */

#define    FALSE         0           /* Zero is false */
#define    TRUE          1           /* Non-zero is true */
#define    WORD_SIZE     4           /* A word is 4 bytes */
#define    NEG_WORD_SIZE -4

#define    EDGE_CAP_OF   3*WORD_SIZE /* Offset of edge capture PIO register */
#define    INTMASK_OF    2*WORD_SIZE /* Offset of interrupt mask PIO register */
