#include "system.h"
#define N_ROWS 272
#define N_COLS 480
#define ROW_SIZE 512
#define WORD_SIZE 4

#define BLUE 0x00A00000
#define GREEN 0x00008000
#define RED 0x00000080
#define BLACK 0x00000000

extern mem_write_word(unsigned int address, unsigned int value);
int main(){
	unsigned int r, c, address;
	unsigned char *data;

	trigger_init();

	set_sample_rate(100000);
	set_delay(10);
	set_trigger(64, 1);

	while (1)
	{
		start_sample(0);

		data = sample_done();
		if (data)
		{
			for (c = 0; c < N_COLS; c++)
			{
				address = VRAM_BASE | ((unsigned int)data[c] << 11) | (c << 2);
				//address = VRAM_BASE + ((int)data[c]*N_ROWS/255 * ROW_SIZE + c)*WORD_SIZE;
				mem_write_word(address, GREEN);
			}
		}
			address = VRAM_BASE;
			for (r = 0; r < N_ROWS; r++)
			{
			    for (c = 0; c < N_COLS; c++)
			    {
			        mem_write_word(address, BLACK);
			        address += WORD_SIZE;
			    }
			    address += ROW_SIZE*WORD_SIZE - N_COLS * WORD_SIZE;
			}

	}

	printf("done");
	return 0;
}
