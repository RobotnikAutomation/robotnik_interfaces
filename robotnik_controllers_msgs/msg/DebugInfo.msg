std_msgs/Header header

# Kinematics reconfiguration is active for the selected wheel targets.
bool kinematic_reconfiguration

# True when target_twist is already inside cartesian limits.
bool inside_cartesian_limits

# True when control feedback comes from previous commands instead of measured wheels.
bool is_open_loop

# Robot stopped status from measured wheel traction velocities.
bool is_robot_stopped

# Wheel alignment gate used by steering controllers.
bool wheels_aligned

# Global traction scaling factor applied by steering alignment logic.
float64 traction_scale

# Control loop period in seconds.
float64 control_period

# Source selected by the input multiplexer in this cycle.
string command_source

ControllerState controller_state

# Input twist selected by the controller mux.
geometry_msgs/TwistStamped s10_input_target_twist

# Cartesian-limited version of s10_input_target_twist.
geometry_msgs/TwistStamped s20_limited_input_target_twist

# Last received joint command input.
sensor_msgs/JointState input_joints

# Wheel targets computed from s10_input_target_twist.
sensor_msgs/JointState s30_wheel_targets_from_input_twist

# Wheel targets computed from s20_limited_input_target_twist.
sensor_msgs/JointState s31_wheel_targets_from_limited_input_target_twist

# Mirrored/reconfigured representation of s30_wheel_targets_from_input_twist.
sensor_msgs/JointState s32_mirrored_wheel_targets_from_input_twist

# Mirrored/reconfigured representation of s31_wheel_targets_from_limited_input_target_twist.
sensor_msgs/JointState s33_mirrored_wheel_targets_from_limited_input_target_twist

# Final selected wheel targets before controller actions.
sensor_msgs/JointState s40_selected_wheel_targets

# Twist recomputed from s40_selected_wheel_targets.
geometry_msgs/TwistStamped s41_selected_target_twist

# Wheel commands before wheel-level limits.
sensor_msgs/JointState s50_prelimit_wheel_commands

# Final wheel commands sent to command interfaces.
sensor_msgs/JointState s60_final_wheel_commands

# Twist recomputed from s60_final_wheel_commands.
geometry_msgs/TwistStamped s70_final_command_twist

# Twist used as control feedback (open-loop or measured).
geometry_msgs/TwistStamped s80_control_feedback_twist

# Wheel states used as control feedback.
sensor_msgs/JointState s81_control_feedback_wheel_states

# Measured wheel states from hardware interfaces.
sensor_msgs/JointState s82_measured_wheel_states

# Per-wheel selected steering alignment tolerance.
# Order is aligned with steering_alignment_mode_per_wheel and steering_alignment_mode_id_per_wheel.
float64[] steering_alignment_range_per_wheel

# Per-wheel source used to select the alignment tolerance ("velocity" or "icr").
string[] steering_alignment_mode_per_wheel

# Per-wheel source encoded as integer for plotting (0=velocity, 1=icr).
int32[] steering_alignment_mode_id_per_wheel

