cmake_minimum_required(VERSION 3.5)
project(robotnik_navigation_msgs)

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)

set(msg_files
  msg/PoseStampedArray.msg
)

set(srv_files
)

set(action_files
  "action/Dock.action"
  "action/Move.action"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES builtin_interfaces geometry_msgs action_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
