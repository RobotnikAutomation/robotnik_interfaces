cmake_minimum_required(VERSION 3.5)
project(robotnik_io_msgs)

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)


if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  # TODO(jwallace42): This is a work around for https://github.com/ros2/rosidl_typesupport_fastrtps/issues/28
  add_compile_options(-Wno-error=deprecated)
endif()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msgs/InputsOutputs.msg"
  "msgs/AnalogIO.msg"
  "msgs/DigitalIO.msg"

  "srvs/SetDigitalOutput.srv"
  "srvs/SetAnalogOutput.srv"
  DEPENDENCIES builtin_interfaces
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
