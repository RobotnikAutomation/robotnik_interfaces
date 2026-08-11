# robotnik_controllers_msgs

Interfaces used by the Robotnik controllers:
- https://github.com/RobotnikAutomation/robotnik_controllers

# Messages (.msg)

- [ControllerState](./msg/ControllerState.msg): Represents the state of a controller throug a timestamped message with the controller state (as a string and a numeric value).

# Services (.srv)
- [AvailableKinemtics](./srv/AvailableKinematics.srv): Service to get the available kinematics for a robot. Response with a list of available kinematics and a standard Robotnik [Response](../robotnik_common_msgs/msg/Response.msg).


- [ChangeKinematics](./srv/ChangeKinematics.srv): Service to change the kinematics of a robot. Response with a standard Robotnik [Response](../robotnik_common_msgs/msg/Response.msg).


- [SetOdometry](./srv/SetOdometry.srv): Service to set the odometry of a robot (setting x, y and yaw). Response with a standard Robotnik [Response](../robotnik_common_msgs/msg/Response.msg).