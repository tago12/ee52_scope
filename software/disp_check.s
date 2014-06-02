    .section .text  /* Code starts here */

    .global write_word
write_word
    STWIO   r5, (r4)
    RET



