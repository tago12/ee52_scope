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
#define BLOCK_SIZE 0x100
#define BLOCK_NUM 0x20000 / BLOCK_SIZE

int main()
{
  int i, n;
  char *array = (char *)0x120000;
  printf("%d", (int)array[0]);
  for (i = 0; i < BLOCK_NUM; i++)
  {
	  for (n = 0; n < 256; n++)
	  {
		  array[n] = (char)n;
	  }
	  for (n = 0; n < 256; n++)
	  {
		  if (array[n] != (char)n)
			  printf("failed block %x, byte %x\n", i, n);
	  }
	  array += BLOCK_SIZE;
  }
  printf("Success!\n");


  return 0;
}
