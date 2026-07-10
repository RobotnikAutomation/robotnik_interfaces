# This message represents the complete state of a node.
# Combines operation state, communication health, lifecycle, 
# and resource metrics.

# Timestamp of the complete state of the node.
builtin_interfaces/Time stamp

# Indicates all interfaces are receiving communicating.
uint8 COMMUNICATION_STATE_HEALTHY = 0
# Indicates some interfaces are not receiving communication.
uint8 COMMUNICATION_STATE_WARNING = 1
# Indicates some required interfaces are not receiving communication.
uint8 COMMUNICATION_STATE_FAILURE = 2
# The state from the above definitions.
State communication

# The state from lifecycle states
# http://design.ros2.org/articles/node_lifecycle.html
lifecycle_msgs/State lifecycle

# Node frequency (Hz)
# float32 frequency
# CPU usage percentage (0.0 - 100.0)
# float32 cpu_usage
# Memory usage in MB
# float32 memory_usage
