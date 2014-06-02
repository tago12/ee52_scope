#include "system.h"

#define N_ROWS 272
#define N_COLS 480
#define CHECKERBOARD 16

#define BLUE 0x00000080
#define GREEN 0x00008000
#define RED 0x000A0000

extern word_write(int address, int value);

int main (){
    int r, c, color, address = VRAM_BASE;
    for (r = 0; r < N_ROWS; r++)
    {
        for (c = 0; c < N_COLS; c++)
        {
            if (r == 0 || r == N_ROWS-1 || c == 0 || c == N_COLS - 1)
                color = RED;
            else if (((r / CHECKERBOARD) % 2 && (c / CHECKERBOARD) % 2)
                   || (!((r / CHECKERBOARD) % 2) && !((c / CHECKERBOARD) % 2)))
                color = BLUE;
            else
                color = GREEN;
            word_write(address, color);
            address += 4;
        } 
    } 
    return 0;
}