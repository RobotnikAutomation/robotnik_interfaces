cmake_minimum_required(VERSION 3.8)
project(robotnik_docker_supervisor_msgs)

# Find necessary packages
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)

# List service files
set(srv_files
  "srv/GetComposeList.srv"
  "srv/ComposeCommand.srv"
  "srv/ComposeCommandAll.srv"
  "srv/ComposeStatus.srv"
  "srv/ComposeLogs.srv"
  "srv/GetContainerList.srv"        
  "srv/ContainerCommand.srv"
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
