/****************************************************************************/
/*                                                                          */
/*                                 TOUCH.H                                  */
/*                     Touch Screen Interface Definitions                   */
/*                               Include File                               */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   This file contains the function declarations and constants for the touch
   screen interface.


   Revision History:
      6/6/14  Santiago Navonne  Initial revision.
*/

void init_touchscreen();
void touch_handler();
void i2c_tx(char cmd);
char i2c_rx();
int touch_available();
void get_touch(int *x, int *y);

/* Touch screen controller constants */
#define  TOUCH_MASK   1                /* Touch screen interrupt is bottom bit */
#define  TOUCH_GET_X  0b11001110
#define  TOUCH_GET_Y  0b11011110
#define  TOUCH_I2C_ADDR 0b01001000     /* Touch screen controller I2C address */

/* I2C constants */
#define  PRER_OF_LO   0                /* Prescale register offset, low byte */
#define  PRER_OF_HI   1                /* Prescale register offset, high byte */
#define  CTR_OF       2                /* Control register offset */
#define  TXR_OF       3                /* Transmit register offset */
#define  RXR_OF       3                /* Read register offset */
#define  CMD_OF       4                /* Command register offset */
#define  STS_OF       4                /* Status register offset */
#define  I2C_PRER_VAL (38000/(5*100))-1/* Clock Prescale register */
                                       /* Converts 38MHz to 100KHz */
#define  I2C_CTR_VAL  0x80             /* Initial control register value: enable core */
#define  I2C_TXR_WR   0                /* Write transfer bit */
#define  I2C_TXR_RD   1                /* Read transfer bit */
#define  I2C_CMD_STA  0x80             /* Start command bit */
#define  I2C_CMD_STO  0x40             /* Stop command bit */
#define  I2C_CMD_RD   0x20             /* Read command bit */
#define  I2C_CMD_WR   0x10             /* Write command bit */
#define  I2C_CMD_NACK 0x08             /* Read acknowledge command bit */
#define  I2C_CMD_IACK 0x01             /* Interrupt acknowledge command bit */
#define  I2C_TIP_MASK 0x02             /* Transfer in progress status bit */
#define  I2C_IF_MASK  0x01             /* Interrupt Flag status bit */
#define  I2C_ACK_MASK 0x80             /* Received acknowledge status bit */
