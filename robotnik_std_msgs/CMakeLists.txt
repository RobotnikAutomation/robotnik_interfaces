cmake_minimum_required(VERSION 3.5)
project(robotnik_std_msgs)

find_package(ament_cmake REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  "msg/BoolArray.msg"
  "msg/Pose2DArray.msg"
  "msg/Pose2DStamped.msg"
  "msg/StringArray.msg"
  "msg/StringStamped.msg"
)

set(srv_files
)

set(action_files
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES
  geometry_msgs
  std_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
