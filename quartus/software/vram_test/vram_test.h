/* vram_test include file */
#define VRAM_SIZE   262144        /* Size of the VRAM in words. */
#define LOOP_PERIOD 512           /* Divide into 512 word blocks. */
#define WIDTH       4             /* Memory width in bytes. */
#define CLEAR_TOP   0x00FFFFFF        /* Mask to clear top byte. */
#define VRAM_PERIOD LOOP_PERIOD*WIDTH /* Words might be larger in VRAM */
#define VRAM_BLOCKS VRAM_SIZE/LOOP_PERIOD
                                  /* Number of blocks is size / loop period. */

#define VAL1 0x00CAFEFF           /* Arbitrary test values for back-to-back */
#define VAL2 0x00FBABEF           /* operations. */
#define VAL3 0x00FFDEAD
#define VAL4 0x00BEFFEF
#define SEED 0x8BADF00D

#define WAIT_TIME 1*60*1000000    /* Wait time is 1 minute in microseconds. */
