/* vram_test include file */
#define VRAM_SIZE   262144        /* Size of the VRAM in words. */
#define LOOP_PERIOD 512           /* Each row is 512 words. */
#define WIDTH       4             /* Memory width in bytes. */
#define CLEAR_TOP   0x00FFFFFF        /* Mask to clear top byte. */
#define DISP_ROW    LOOP_PERIOD*WIDTH /* Words might be larger in VRAM */
#define HEIGHT 		272           /* Display height. */
#define SUB_STEP    CLEAR_TOP/LOOP_PERIOD
#define INITIAL     0x00A00000
#define FINAL 		0x00008000
#define MIDPOINT    240
#define HALF        272/2
#define MASK        0x00A08080
