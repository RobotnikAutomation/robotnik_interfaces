# robotnik_io_msgs
Interfaces to read and write analog and digital inputs and outputs.

# Messages (.msg)

* [AnalogIO](./msg/AnalogIO.msg): Represents an analog input or output with a id, name and value.


* [DigitalIO](./msg/DigitalIO.msg): Represents a digital input or output with an id, name and value.


* [InputsOutputs](./msg/InputsOutputs.msg): Contains multiple analog and digital inputs and outputs.


* [Register](./msg/Register.msg): Represents a register with an address and value.


* [RegisterArray](./msg/RegisterArray.msg): Contains an array of registers.

# Services (.srv)

* [GetRegisters](./srv/GetRegisters.srv): Service to get the values of multiple registers.


* [SetAnalogOutput](./srv/SetAnalogOutput.srv): Sets the value of an analog output.


* [SetAnalogOutputArray](./srv/SetAnalogOutputArray.srv): Sets the value for several analog outputs.


* [SetDigitalOutput](./srv/SetDigitalOutput.srv): Sets the value of a digital output.


* [SetDigitalOutputArray](./srv/SetDigitalOutputArray.srv): Sets the value for several digital outputs.


* [SetRegisters](./srv/SetRegisters.srv): Sets the value for several registers.
