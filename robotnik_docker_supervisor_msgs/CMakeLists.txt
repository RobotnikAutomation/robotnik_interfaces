cmake_minimum_required(VERSION 3.8)
project(robotnik_docker_supervisor_msgs)

# Find necessary packages
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)

# List service files
set(srv_files
  "srv/DownStack.srv"
  "srv/GetModuleList.srv"
  "srv/GetStackList.srv"
  "srv/GetStackLogs.srv"
  "srv/GetStackStatus.srv"
  "srv/RestartStack.srv"
  "srv/StartModule.srv"
  "srv/StartStack.srv"
  "srv/StopModule.srv"
  "srv/StopStack.srv"
)

# Generate the ROS2 interfaces
rosidl_generate_interfaces(${PROJECT_NAME}
  ${srv_files}
  DEPENDENCIES builtin_interfaces
)

# Export runtime dependencies
ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
