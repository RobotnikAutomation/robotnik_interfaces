# Modbus function codes for both read and write operations.

# Read Functions
uint8 READ_COILS                 = 1
uint8 READ_DISCRETE_INPUTS       = 2
uint8 READ_HOLDING_REGISTERS     = 3
uint8 READ_INPUT_REGISTERS       = 4

# Write Functions
uint8 WRITE_SINGLE_COIL          = 5
uint8 WRITE_SINGLE_REGISTER      = 6
uint8 WRITE_MULTIPLE_COILS       = 15
uint8 WRITE_MULTIPLE_REGISTERS   = 16

uint8 function_code              # Used to encode/decode actual function in messages
