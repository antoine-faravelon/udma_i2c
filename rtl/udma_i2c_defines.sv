// I2C Master Registers
`define REG_RX_SADDR     5'b00000 //BASEADDR+0x00
`define REG_RX_SIZE      5'b00001 //BASEADDR+0x04
`define REG_RX_CFG       5'b00010 //BASEADDR+0x08
`define REG_RX_INTCFG    5'b00011 //BASEADDR+0x0C

`define REG_TX_SADDR     5'b00100 //BASEADDR+0x10
`define REG_TX_SIZE      5'b00101 //BASEADDR+0x14
`define REG_TX_CFG       5'b00110 //BASEADDR+0x18
`define REG_TX_INTCFG    5'b00111 //BASEADDR+0x1C

`define REG_CMD_SADDR    5'b01000 //BASEADDR+0x20
`define REG_CMD_SIZE     5'b01001 //BASEADDR+0x24
`define REG_CMD_CFG      5'b01010 //BASEADDR+0x28
`define REG_CMD_INTCFG   5'b01011 //BASEADDR+0x2C

`define REG_STATUS       5'b01100 //BASEADDR+0x30
`define REG_SETUP        5'b01101 //BASEADDR+0x34

// standard I2C commands
`define I2C_CMD_START     4'b0000  //              (0x0 << I2C_CMD_OFFSET)
`define I2C_CMD_STOP      4'b0010  //              (0x2 << I2C_CMD_OFFSET)
`define I2C_CMD_RD_ACK    4'b0100  //              (0x4 << I2C_CMD_OFFSET)
`define I2C_CMD_RD_NACK   4'b0110  //              (0x6 << I2C_CMD_OFFSET)
`define I2C_CMD_WR        4'b1000  //              (0x8 << I2C_CMD_OFFSET)
`define I2C_CMD_WAIT      4'b1010  //              (0xA << I2C_CMD_OFFSET)
`define I2C_CMD_RPT       4'b1100  //              (0xC << I2C_CMD_OFFSET)
`define I2C_CMD_CFG       4'b1110  //              (0xE << I2C_CMD_OFFSET)
`define I2C_CMD_WAIT_EV   4'b0001  //              (0x1 << I2C_CMD_OFFSET)

// define custom commands --> can use LSb since it will never go to actual
// bus
`define I2C_CMD_SETUP_UCA 4'b0011  // 0x3 --> setup tx/rx address
`define I2C_CMD_SETUP_UCS 4'b0101  // 0x5 --> stup tx/rx size + enable transfer
`define I2C_CMD_WRA       4'b0111  // write device address on bus
`define I2C_CMD_WRS       4'b1001  // write transfer size on bus

`define BUS_CMD_NONE  3'b000
`define BUS_CMD_START 3'b001
`define BUS_CMD_STOP  3'b010
`define BUS_CMD_WRITE 3'b011
`define BUS_CMD_READ  3'b100
`define BUS_CMD_WAIT  3'b101
