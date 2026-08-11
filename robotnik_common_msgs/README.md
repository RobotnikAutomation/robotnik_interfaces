# robotnik_common_msgs

This package provides several messages and services for common functionalities in Robotnik systems.

## Messages (.msg)

* [Response](./msg/Response.msg): A generic response message that includes a success flag and a description message.

## Services (.srv)

* [SetBool](./srv/SetBool.srv): A service to set a boolean value, which includes a request with the boolean value. Uses [Response](./msg/Response.msg) message.


* [SetFloat32](./srv/SetFloat32.srv): A service to set a float value, which includes a request with the float value. Uses [Response](./msg/Response.msg) message.


* [SetFloat64](./srv/SetFloat64.srv): A service to set a double value, which includes a request with the double value. Uses [Response](./msg/Response.msg) message.


* [SetInt32](./srv/SetInt32.srv): A service to set an integer value, which includes a request with the integer value. Uses [Response](./msg/Response.msg) message.


* [SetString](./srv/SetString.srv): A service to set a string value, which includes a request with the string value. Uses [Response](./msg/Response.msg) message.