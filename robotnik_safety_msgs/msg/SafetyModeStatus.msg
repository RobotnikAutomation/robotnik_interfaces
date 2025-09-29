# Operation mode
string operation_mode
string OPERATIONMODE_AUTO=auto
string OPERATIONMODE_MANUAL=manual
string OPERATIONMODE_MAINTENANCE=maintenance

# Safety mode
string safety_mode
string SAFETYMODE_SAFE=safe
string SAFETYMODE_LASER_MUTE=laser_mute

# Flag to emergency stop condition
bool emergency_stop

# Flag to safety stop condition
bool safety_stop

# Speed reading by safety system
float64 current_speed

string laser_mode
LaserStatus[] laser_status
