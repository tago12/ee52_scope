/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#define BLOCK_SIZE 149
#define RAM_BLOCK_NUM 0x20000 / BLOCK_SIZE
#define ROM_BLOCK_NUM 0x80000 / BLOCK_SIZE

#undef TEST_RAM
#undef TEST_ROM
#define KEYS_TEST

extern int key_available();
extern unsigned char getkey();
extern void keys_init();

int main()
{
  int i, n;
  char *array;

#ifdef TEST_RAM
  array = (char *)0x120000;
  for (i = 0; i < RAM_BLOCK_NUM; i++)
  {
	  for (n = 0; n < BLOCK_SIZE; n++)
	  {
		  array[n] = (char)n;
	  }
	  for (n = 0; n < BLOCK_SIZE; n++)
	  {
		  if (array[n] != (char)n)
			  printf("RAM: failed block %x, byte %x\n", i, n);
	  }
	  array += BLOCK_SIZE;
  }
  printf("RAM: Success!\n");

#endif /* TEST_RAM */

#ifdef TEST_ROM
  array = (char *)0x80000;
  for (i = 0; i < ROM_BLOCK_NUM; i++)
    {
  	  for (n = 0; n < BLOCK_SIZE; n++)
  	  {
  		  if (array[n] != (char)n)
  			  printf("ROM: failed block %x, byte %x\n", i, n);
  	  }
  	  array += BLOCK_SIZE;
    }
  printf("ROM: Success!\n");
#endif /* TEST_ROM */

#ifdef KEYS_TEST
  keys_init();
  while (1)
  {
	  if (key_available())
		  printf("Key pressed: %d\n", (int)getkey());
  }
#endif


  return 0;
}
