# robotnik_interfaces
A set of packages which contain common interface files from the Robotnik stack (.msg, .srv and .action).

## Table of Content

<ol>
<li>
    <a href="#purpose">Purpose</a>
</li>
<li>
    <a href="#messages">Messages</a>
    <ul>
    <li>
        <a href="#robotnik_std_msgs">robotnik_std_msgs</a>
        <ul>
            <li>
                <a href="#msg">msg</a>
            </li>
        </ul>
    </li>
    <li>
        <a href="#robotnik_safety_msgs">robotnik_safety_msgs</a>
        <ul>
            <li>
                <a href="#msg-1">msg</a>
            </li>
        </ul>
    </li>
    <li>
        <a href="#robotnik_navigation_msgs">robotnik_navigation_msgs</a>
        <ul>
            <li>
                <a href="#action">action</a>
            </li>
        </ul>
    </li>
    <li>
        <a href="#robotnik_io_msgs">robotnik_io_msgs</a>
        <ul>
            <li>
                <a href="#msg-2">msg</a>
            </li>
            <li>
                <a href="#srv">srv</a>
            </li>
        </ul>
    </li>
    <li>
        <a href="#robotnik_controller_msgs">robotnik_controller_msgs</a>
        <ul>
            <li>
                <a href="#msg-3">msg</a>
            </li>
            <li>
                <a href="#srv-1">srv</a>
            </li>
        </ul>
    </li>
    <li>
        <a href="#robotnik_battery_msgs">robotnik_battery_msgs</a>
        <ul>
            <li>
                <a href="#msg-4">msg</a>
            </li>
        </ul>
    </li>
    </ul>
</li>

</ol>

## Purpose

Isolating the messages to communicate between stacks in a shared dependency allows nodes in dependent stacks to communicate without requiring dependencies upon each other.
This repository has been designed to contain the most common messages used between multiple packages to provide a shared dependency which will eliminate a problematic circular dependency.

## Messages

### robotnik_std_msgs

Extension of std_msgs

#### msg

| msg               	| data                      	|
|-------------------	|---------------------------	|
| BoolArray.msg     	| bool[] data               	|
| Pose2DArray.msg   	| Pose2D[] data             	|
| Pose2DStamped.msg 	| Header header Pose2D data 	|
| StringArray.msg   	| string[] data             	|
| StringStamped.msg 	| Header header string data 	|

### robotnik_safety_msgs

Message for safety system

#### msg

| msg               	| data                                                   	|
|-------------------	|--------------------------------------------------------	|
| Register.msg      	| string key string value string type string description 	|
| RegisterArray.msg 	| Register[] registers                                   	|

### robotnik_navigation_msgs

Messages for the different actions of the robot

#### action

| action      	| goal                                                                                                                     	| result                             	| feedback                                                               	|
|-------------	|--------------------------------------------------------------------------------------------------------------------------	|------------------------------------	|------------------------------------------------------------------------	|
| Dock.action 	| string dock_frame<br>string robot_dock_frame<br>geometry_msgs/Pose2D dock_offset<br>geometry_msgs/Twist maximum_velocity 	| bool success<br>string description 	| geometry_msgs/Pose2D remaining<br>geometry_msgs/Twist current_velocity 	|
| Move.action 	| geometry_msgs/Pose2D goal<br>geometry_msgs/Twist maximum_velocity                                                        	| bool success<br>string description 	| geometry_msgs/Pose2D remaining<br>geometry_msgs/Twist current_velocity 	|

### robotnik_io_msgs

Messages to read and write the IO Analgo/Digital of the Robot

#### msg

| msg                    	| data                                                                                                               	|
|------------------------	|--------------------------------------------------------------------------------------------------------------------	|
| AnalogIO.msg           	| int32 id<br>string name<br>float64 value                                                                           	|
| DigitalIO.msg          	| int32 id<br>string name<br>bool value                                                                              	|
| InputsOutputs.msg      	| DigitalIO[] digital_inputs<br>DigitalIO[] digital_outputs<br>AnalogIO[] analog_inputs<br>AnalogIO[] analog_outputs 	|
| NamedInputOutput.msg   	| string name<br>bool value                                                                                          	|
| NamedInputsOutputs.msg 	| robotnik_io_msgs/NamedInputOutput[] digital_inputs<br>robotnik_io_msgs/NamedInputOutput[] digital_outputs          	|

#### srv

| srv                  	| input            	| output                         	|
|----------------------	|------------------	|--------------------------------	|
| SetAnalogOutput.srv  	| AnalogIO output  	| bool success<br>string message 	|
| SetDigitalOutput.srv 	| DigitalIO output 	| bool success<br>string message 	|

### robotnik_controller_msgs

Messages used for the controller state and the kinematics changes

#### msg

| msg                 	| data                               	|
|---------------------	|------------------------------------	|
| ControllerState.msg 	| string state<br>uint8 state_number 	|

#### srv

| srv                     	| input             	| output                              	|
|-------------------------	|-------------------	|-------------------------------------	|
| AvailableKinematics.srv 	|                   	| bool success<br>string[] kinematics 	|
| ChangeKinematics.srv    	| string kinematics 	| bool success<br>string message      	|
| SetOdometry.srv    	| float32 x<br>float32 y<br>float32 z<br>float32 orientation 	| bool ret    	|

### robotnik_battery_msgs

Messages used by the battery, inverter and docking station

#### msg
| msg                       	| data                                                                                                                                                                                                                        	|
|---------------------------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| BatteryStatus.msg         	| float32 voltage	<br>float32 current	<br>float32 level	<br>uint32 time_remaining<br>uint32 time_charging   <br>bool is_charging       <br>float32[] cell_voltages                                                               	|
| BatteryStatusStamped.msg  	| std_msgs/Header header<br>BatteryStatus   status                                                                                                                                                                            	|
| DockingStatus.msg         	| string MODE_DISABLED=disabled<br>string MODE_AUTO_HW=automatic_hw<br>string MODE_AUTO_SW=automatic_sw<br>string MODE_MANUAL_SW=manual_sw<br>string operation_mode<br>bool contact_relay_status<br>bool charger_relay_status 	|
| DockingStatusStamped.msg  	| std_msgs/Header header<br>DockingStatus status                                                                                                                                                                              	|
| InverterStatus.msg        	| float32 ac_voltage  <br>float32 dc_voltage  <br>float32 load        <br>float32 percentage  <br>float32 temperature <br>bool    on          <br>string serial_number                                                        	|
| InverterStatusStamped.msg 	| std_msgs/Header header<br>InverterStatus  status                                                                                                                                                                            	|
