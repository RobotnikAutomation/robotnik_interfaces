# robotnik_battery_msgs

This package provides several messages for representing battery states and related information.

## Messges (.msg)
* [BatteryStatus](./msg/BatteryStatus.msg): Represents the status of a battery, including its charge level, voltage, current, cell_voltage and charging state.


* [BatteryStatusStamped](./msg/BatteryStatusStamped.msg): Stamped version of BatteryStatus, which includes a timestamp.


* [DockingStationStatus](./msg/DockingStationStatus.msg): Represents the status of the interaction with a docking station. Includes operation mode and relays status.


* [DockingStationStatusStamped](./msg/DockingStationStatusStamped.msg): Stamped version of DockingStationStatus, which includes a timestamp.


* [InverterStatus](./msg/InverterStatus.msg): Represents the status of an inverter, including its output/input voltage, temperature, serial number.


* [InverterStatusStamped](./msg/InverterStatusStamped.msg): Stamped version of InverterStatus, which includes a timestamp.