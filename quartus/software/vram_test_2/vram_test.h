/* vram_test include file */
#define VRAM_SIZE   0x20000       /* Size of the VRAM is bytes. */
#define LOOP_PERIOD 256           /* Divide into 256 byte blocks. */
#define VRAM_BLOCKS VRAM_SIZE/LOOP_PERIOD 
                                  /* Number of blocks is size / loop period. */
#define VRAM_BASE   0x1a0000      /* Base address of VRAM. */
#define WIDTH       1             /* Memory width in bytes. */
#define CLEAR_TOP   0x00FF        /* Mask to clear top byte. */
#define VRAM_PERIOD LOOP_PERIOD*WIDTH

#define VAL1 0x00CAFEFF           /* Arbitrary test values for back-to-back */
#define VAL2 0x00FBABEF           /* operations. */
#define VAL3 0x00FFDEAD
#define VAL4 0x00BEFFEF

#define WAIT_TIME 1*60*1000       /* Wait time is 1 minute in milliseconds. */
