    .section .text  /* Code starts here */

    .global mem_write_word
mem_write_word:
    STWIO   r5, (r4)
    RET
