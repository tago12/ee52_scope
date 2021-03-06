/****************************************************************************/
/*                                                                          */
/*                                 TOUCH.C                                  */
/*                     Touch Screen Interface Procedures                    */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
  Touch screen interface routines for the EE/CS 52 Digital Oscilloscope project.
  Function definitions are included in this file, and are laid out as follows:
    - draw_cursor: TODO;
    - clear_cursor: TODO;
    - set_cursor: TODO.


   Revision History:
      6/6/14  Santiago Navonne  Initial revision.
*/

#include  "interfac.h"
#include  "scopedef.h"
#include  "system.h"
#include  "general.h"
#include  "touch.h"
#include <sys/alt_irq.h>
#include  <stdio.h>

/* shared variables */
static int touch_pending = FALSE;     /* TRUE if the screen has been touched, FALSE otherwise */
static int touch_x;                   /* x coordinate of location of last touch */
static int touch_y;                   /* y coordinate of location of last touch */

char *i2c_base = (char *) I2C_CTRL_BASE;
char *touch_ctrl_base = (char *) PENIRQ_BASE;

/* TODO */
void touchscreen_init()
{
    /* TODO */
    *(touch_ctrl_base + EDGE_CAP_OF) = TOUCH_MASK;
    alt_ic_isr_register(0, PENIRQ_IRQ, (void *) touch_handler, 0, 0);
    *(touch_ctrl_base + INTMASK_OF) = TOUCH_MASK;

    i2c_base[PRER_OF_HI] = (char)(((unsigned short)I2C_PRER_VAL) >> 8);
    i2c_base[PRER_OF_LO] = I2C_PRER_VAL;
    i2c_base[CTR_OF] = I2C_CTR_VAL;
    i2c_tx(TOUCH_GET_X);
}

/* TODO */
void touch_handler()
{

    /* process touch */
    i2c_tx(TOUCH_GET_X);
    touch_x = i2c_rx();
    i2c_tx(TOUCH_GET_Y);
    touch_y = i2c_rx();

    touch_pending = TRUE;

    *(touch_ctrl_base + EDGE_CAP_OF) = TOUCH_MASK;
}

void i2c_tx(char cmd)
{
    *(i2c_base + TXR_OF) = TOUCH_I2C_ADDR | I2C_TXR_WR;
    *(i2c_base + CMD_OF) = I2C_CMD_IACK | I2C_CMD_STA | I2C_CMD_WR;
    while ((*(i2c_base + STS_OF) & I2C_TIP_MASK));
    if (*(i2c_base + STS_OF) & I2C_ACK_MASK)
    	printf("I2C Error: no ACK received.\n");

    *(i2c_base + TXR_OF) = cmd;
    *(i2c_base + TXR_OF) = I2C_CMD_IACK | I2C_TXR_WR;
    while ((*(i2c_base + STS_OF) & I2C_TIP_MASK));
    if (*(i2c_base + STS_OF) & I2C_ACK_MASK)
        printf("I2C Error: no ACK received.\n");

    *(i2c_base + CMD_OF) = I2C_CMD_IACK | I2C_CMD_STO;
}
char i2c_rx()
{
    char val;

    *(i2c_base + TXR_OF) = TOUCH_I2C_ADDR | I2C_TXR_RD;
    *(i2c_base + CMD_OF) = I2C_CMD_STA | I2C_CMD_WR;
    while ((*(i2c_base + STS_OF) & I2C_TIP_MASK));
    if (*(i2c_base + STS_OF) & I2C_ACK_MASK)
        printf("I2C Error: no ACK received.\n");

    *(i2c_base + CMD_OF) = I2C_TXR_RD;
    while (!(*(i2c_base + STS_OF) & I2C_IF_MASK));
    val = *(i2c_base + RXR_OF);
    *(i2c_base + CMD_OF) = I2C_CMD_IACK | I2C_CMD_NACK | I2C_CMD_STO;

    return val;

}

/* TODO */
int touch_available()
{
    return touch_pending;
}

/* TODO */
void get_touch(int *x, int *y)
{
    while (!touch_pending);

    if (touch_pending)
    {
        *x = touch_x;
        *y = touch_y;
    }
}
