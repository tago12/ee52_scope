#include "system.h"

#define N_ROWS 272
#define N_COLS 480
#define ROW_SIZE 512
#define WORD_SIZE 4
#define CHECKERBOARD 16

#define BLUE 0x00A00000
#define GREEN 0x00008000
#define RED 0x00000080
#define BLACK 0x00000000

extern mem_write_word(int address, int value);

int main (){
    int r, c, color, address = VRAM_BASE;
    for (r = 0; r < N_ROWS; r++)
    {
        for (c = 0; c < N_COLS; c++)
        {
            if (r == 0 || r == N_ROWS-1 || c == 0 || c == N_COLS - 1)
                color = RED;
            else if (((r / CHECKERBOARD) % 2 && (c / CHECKERBOARD) % 2)
                   || (!((r / CHECKERBOARD) % 2) && !((c / CHECKERBOARD) % 2)))
                color = BLUE;
            else
                color = GREEN;
            mem_write_word(address, color);
            address += WORD_SIZE;
        }
        address += ROW_SIZE*WORD_SIZE - N_COLS * WORD_SIZE;
    }
    return 0;
}
