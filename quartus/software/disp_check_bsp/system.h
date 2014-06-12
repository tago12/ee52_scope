/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios' in SOPC Builder design 'sopc_scope_sys'
 * SOPC Builder design path: C:/Users/tago/Dropbox/OUT/EE52/quartus/sopc_scope_sys.sopcinfo
 *
 * Generated: Tue Jun 10 00:06:29 PDT 2014
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00240820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x16
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00220020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x16
#define ALT_CPU_NAME "nios"
#define ALT_CPU_RESET_ADDR 0x00220000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00240820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x16
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00220020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x16
#define NIOS2_RESET_ADDR 0x00220000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_PIO
#define __ALTERA_GENERIC_TRISTATE_CONTROLLER
#define __ALTERA_NIOS2_QSYS
#define __I2C_OPENCORES


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone III"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag"
#define ALT_STDERR_BASE 0x241180
#define ALT_STDERR_DEV jtag
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag"
#define ALT_STDIN_BASE 0x241180
#define ALT_STDIN_DEV jtag
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag"
#define ALT_STDOUT_BASE 0x241180
#define ALT_STDOUT_DEV jtag
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "sopc_scope_sys"


/*
 * fifo_data configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_data altera_avalon_pio
#define FIFO_DATA_BASE 0x241140
#define FIFO_DATA_BIT_CLEARING_EDGE_REGISTER 0
#define FIFO_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define FIFO_DATA_CAPTURE 0
#define FIFO_DATA_DATA_WIDTH 8
#define FIFO_DATA_DO_TEST_BENCH_WIRING 0
#define FIFO_DATA_DRIVEN_SIM_VALUE 0
#define FIFO_DATA_EDGE_TYPE "NONE"
#define FIFO_DATA_FREQ 50000000
#define FIFO_DATA_HAS_IN 1
#define FIFO_DATA_HAS_OUT 0
#define FIFO_DATA_HAS_TRI 0
#define FIFO_DATA_IRQ -1
#define FIFO_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFO_DATA_IRQ_TYPE "NONE"
#define FIFO_DATA_NAME "/dev/fifo_data"
#define FIFO_DATA_RESET_VALUE 0
#define FIFO_DATA_SPAN 16
#define FIFO_DATA_TYPE "altera_avalon_pio"


/*
 * fifo_full configuration
 *
 */

#define ALT_MODULE_CLASS_fifo_full altera_avalon_pio
#define FIFO_FULL_BASE 0x241130
#define FIFO_FULL_BIT_CLEARING_EDGE_REGISTER 0
#define FIFO_FULL_BIT_MODIFYING_OUTPUT_REGISTER 0
#define FIFO_FULL_CAPTURE 1
#define FIFO_FULL_DATA_WIDTH 1
#define FIFO_FULL_DO_TEST_BENCH_WIRING 0
#define FIFO_FULL_DRIVEN_SIM_VALUE 0
#define FIFO_FULL_EDGE_TYPE "RISING"
#define FIFO_FULL_FREQ 50000000
#define FIFO_FULL_HAS_IN 1
#define FIFO_FULL_HAS_OUT 0
#define FIFO_FULL_HAS_TRI 0
#define FIFO_FULL_IRQ 4
#define FIFO_FULL_IRQ_INTERRUPT_CONTROLLER_ID 0
#define FIFO_FULL_IRQ_TYPE "EDGE"
#define FIFO_FULL_NAME "/dev/fifo_full"
#define FIFO_FULL_RESET_VALUE 0
#define FIFO_FULL_SPAN 16
#define FIFO_FULL_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * i2c_ctrl configuration
 *
 */

#define ALT_MODULE_CLASS_i2c_ctrl i2c_opencores
#define I2C_CTRL_BASE 0x241080
#define I2C_CTRL_IRQ 2
#define I2C_CTRL_IRQ_INTERRUPT_CONTROLLER_ID 0
#define I2C_CTRL_NAME "/dev/i2c_ctrl"
#define I2C_CTRL_SPAN 32
#define I2C_CTRL_TYPE "i2c_opencores"


/*
 * jtag configuration
 *
 */

#define ALT_MODULE_CLASS_jtag altera_avalon_jtag_uart
#define JTAG_BASE 0x241180
#define JTAG_IRQ 0
#define JTAG_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_NAME "/dev/jtag"
#define JTAG_READ_DEPTH 64
#define JTAG_READ_THRESHOLD 8
#define JTAG_SPAN 8
#define JTAG_TYPE "altera_avalon_jtag_uart"
#define JTAG_WRITE_DEPTH 64
#define JTAG_WRITE_THRESHOLD 8


/*
 * penirq configuration
 *
 */

#define ALT_MODULE_CLASS_penirq altera_avalon_pio
#define PENIRQ_BASE 0x241170
#define PENIRQ_BIT_CLEARING_EDGE_REGISTER 0
#define PENIRQ_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PENIRQ_CAPTURE 1
#define PENIRQ_DATA_WIDTH 1
#define PENIRQ_DO_TEST_BENCH_WIRING 0
#define PENIRQ_DRIVEN_SIM_VALUE 0
#define PENIRQ_EDGE_TYPE "FALLING"
#define PENIRQ_FREQ 50000000
#define PENIRQ_HAS_IN 1
#define PENIRQ_HAS_OUT 0
#define PENIRQ_HAS_TRI 0
#define PENIRQ_IRQ 3
#define PENIRQ_IRQ_INTERRUPT_CONTROLLER_ID 0
#define PENIRQ_IRQ_TYPE "EDGE"
#define PENIRQ_NAME "/dev/penirq"
#define PENIRQ_RESET_VALUE 0
#define PENIRQ_SPAN 16
#define PENIRQ_TYPE "altera_avalon_pio"


/*
 * pio_0 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_0 altera_avalon_pio
#define PIO_0_BASE 0x2410a0
#define PIO_0_BIT_CLEARING_EDGE_REGISTER 1
#define PIO_0_BIT_MODIFYING_OUTPUT_REGISTER 1
#define PIO_0_CAPTURE 1
#define PIO_0_DATA_WIDTH 6
#define PIO_0_DO_TEST_BENCH_WIRING 0
#define PIO_0_DRIVEN_SIM_VALUE 0
#define PIO_0_EDGE_TYPE "FALLING"
#define PIO_0_FREQ 50000000
#define PIO_0_HAS_IN 1
#define PIO_0_HAS_OUT 0
#define PIO_0_HAS_TRI 0
#define PIO_0_IRQ 1
#define PIO_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define PIO_0_IRQ_TYPE "EDGE"
#define PIO_0_NAME "/dev/pio_0"
#define PIO_0_RESET_VALUE 0
#define PIO_0_SPAN 32
#define PIO_0_TYPE "altera_avalon_pio"


/*
 * ram configuration
 *
 */

#define ALT_MODULE_CLASS_ram altera_generic_tristate_controller
#define RAM_BASE 0x220000
#define RAM_IRQ -1
#define RAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RAM_NAME "/dev/ram"
#define RAM_SPAN 131072
#define RAM_TYPE "altera_generic_tristate_controller"


/*
 * rom configuration
 *
 */

#define ALT_MODULE_CLASS_rom altera_generic_tristate_controller
#define ROM_BASE 0x180000
#define ROM_IRQ -1
#define ROM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROM_NAME "/dev/rom"
#define ROM_SPAN 524288
#define ROM_TYPE "altera_generic_tristate_controller"


/*
 * trig_ctrl configuration
 *
 */

#define ALT_MODULE_CLASS_trig_ctrl altera_avalon_pio
#define TRIG_CTRL_BASE 0x241060
#define TRIG_CTRL_BIT_CLEARING_EDGE_REGISTER 0
#define TRIG_CTRL_BIT_MODIFYING_OUTPUT_REGISTER 1
#define TRIG_CTRL_CAPTURE 0
#define TRIG_CTRL_DATA_WIDTH 5
#define TRIG_CTRL_DO_TEST_BENCH_WIRING 0
#define TRIG_CTRL_DRIVEN_SIM_VALUE 0
#define TRIG_CTRL_EDGE_TYPE "NONE"
#define TRIG_CTRL_FREQ 50000000
#define TRIG_CTRL_HAS_IN 0
#define TRIG_CTRL_HAS_OUT 1
#define TRIG_CTRL_HAS_TRI 0
#define TRIG_CTRL_IRQ -1
#define TRIG_CTRL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TRIG_CTRL_IRQ_TYPE "NONE"
#define TRIG_CTRL_NAME "/dev/trig_ctrl"
#define TRIG_CTRL_RESET_VALUE 3
#define TRIG_CTRL_SPAN 32
#define TRIG_CTRL_TYPE "altera_avalon_pio"


/*
 * trig_delay configuration
 *
 */

#define ALT_MODULE_CLASS_trig_delay altera_avalon_pio
#define TRIG_DELAY_BASE 0x241120
#define TRIG_DELAY_BIT_CLEARING_EDGE_REGISTER 0
#define TRIG_DELAY_BIT_MODIFYING_OUTPUT_REGISTER 0
#define TRIG_DELAY_CAPTURE 0
#define TRIG_DELAY_DATA_WIDTH 32
#define TRIG_DELAY_DO_TEST_BENCH_WIRING 0
#define TRIG_DELAY_DRIVEN_SIM_VALUE 0
#define TRIG_DELAY_EDGE_TYPE "NONE"
#define TRIG_DELAY_FREQ 50000000
#define TRIG_DELAY_HAS_IN 0
#define TRIG_DELAY_HAS_OUT 1
#define TRIG_DELAY_HAS_TRI 0
#define TRIG_DELAY_IRQ -1
#define TRIG_DELAY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TRIG_DELAY_IRQ_TYPE "NONE"
#define TRIG_DELAY_NAME "/dev/trig_delay"
#define TRIG_DELAY_RESET_VALUE 1
#define TRIG_DELAY_SPAN 16
#define TRIG_DELAY_TYPE "altera_avalon_pio"


/*
 * trig_level configuration
 *
 */

#define ALT_MODULE_CLASS_trig_level altera_avalon_pio
#define TRIG_LEVEL_BASE 0x241150
#define TRIG_LEVEL_BIT_CLEARING_EDGE_REGISTER 0
#define TRIG_LEVEL_BIT_MODIFYING_OUTPUT_REGISTER 0
#define TRIG_LEVEL_CAPTURE 0
#define TRIG_LEVEL_DATA_WIDTH 8
#define TRIG_LEVEL_DO_TEST_BENCH_WIRING 0
#define TRIG_LEVEL_DRIVEN_SIM_VALUE 0
#define TRIG_LEVEL_EDGE_TYPE "NONE"
#define TRIG_LEVEL_FREQ 50000000
#define TRIG_LEVEL_HAS_IN 0
#define TRIG_LEVEL_HAS_OUT 1
#define TRIG_LEVEL_HAS_TRI 0
#define TRIG_LEVEL_IRQ -1
#define TRIG_LEVEL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TRIG_LEVEL_IRQ_TYPE "NONE"
#define TRIG_LEVEL_NAME "/dev/trig_level"
#define TRIG_LEVEL_RESET_VALUE 0
#define TRIG_LEVEL_SPAN 16
#define TRIG_LEVEL_TYPE "altera_avalon_pio"


/*
 * trig_period configuration
 *
 */

#define ALT_MODULE_CLASS_trig_period altera_avalon_pio
#define TRIG_PERIOD_BASE 0x241160
#define TRIG_PERIOD_BIT_CLEARING_EDGE_REGISTER 0
#define TRIG_PERIOD_BIT_MODIFYING_OUTPUT_REGISTER 0
#define TRIG_PERIOD_CAPTURE 0
#define TRIG_PERIOD_DATA_WIDTH 32
#define TRIG_PERIOD_DO_TEST_BENCH_WIRING 0
#define TRIG_PERIOD_DRIVEN_SIM_VALUE 0
#define TRIG_PERIOD_EDGE_TYPE "NONE"
#define TRIG_PERIOD_FREQ 50000000
#define TRIG_PERIOD_HAS_IN 0
#define TRIG_PERIOD_HAS_OUT 1
#define TRIG_PERIOD_HAS_TRI 0
#define TRIG_PERIOD_IRQ -1
#define TRIG_PERIOD_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TRIG_PERIOD_IRQ_TYPE "NONE"
#define TRIG_PERIOD_NAME "/dev/trig_period"
#define TRIG_PERIOD_RESET_VALUE 1
#define TRIG_PERIOD_SPAN 16
#define TRIG_PERIOD_TYPE "altera_avalon_pio"


/*
 * vram configuration
 *
 */

#define ALT_MODULE_CLASS_vram altera_generic_tristate_controller
#define VRAM_BASE 0x0
#define VRAM_IRQ -1
#define VRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define VRAM_NAME "/dev/vram"
#define VRAM_SPAN 1048576
#define VRAM_TYPE "altera_generic_tristate_controller"

#endif /* __SYSTEM_H_ */
