cmake_minimum_required(VERSION 3.5)
project(robotnik_navigation_msgs)

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)


if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  # TODO(jwallace42): This is a work around for https://github.com/ros2/rosidl_typesupport_fastrtps/issues/28
  add_compile_options(-Wno-error=deprecated)
endif()

rosidl_generate_interfaces(${PROJECT_NAME}
  "action/Dock.action"
  "action/Move.action"
  DEPENDENCIES builtin_interfaces geometry_msgs action_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
