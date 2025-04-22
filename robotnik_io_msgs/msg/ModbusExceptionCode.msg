# Typical Modbus exception codes (based on the Modbus Application Protocol Specification)
# These can be used to provide structured error information alongside human-readable strings.

uint8 ILLEGAL_FUNCTION          = 1    # Function code not supported by slave
uint8 ILLEGAL_DATA_ADDRESS      = 2    # Address out of range
uint8 ILLEGAL_DATA_VALUE        = 3    # Invalid value
uint8 SLAVE_DEVICE_FAILURE      = 4    # Device failed to perform request
uint8 ACKNOWLEDGE               = 5    # Acknowledged, processing later
uint8 SLAVE_DEVICE_BUSY         = 6    # Device is busy
uint8 MEMORY_PARITY_ERROR       = 8    # Memory failure
uint8 GATEWAY_PATH_UNAVAILABLE  = 10   # Gateway can't route request
uint8 GATEWAY_TARGET_FAILED     = 11   # Target device failed to respond

uint8 code                      # Actual exception code (if available)
