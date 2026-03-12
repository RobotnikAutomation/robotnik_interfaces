cmake_minimum_required(VERSION 3.5)
project(robotnik_command_manager_msgs)

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(robotnik_common_msgs REQUIRED)
find_package(unique_identifier_msgs REQUIRED)

set(msg_files
  "msg/Command.msg"
  "msg/CommandInfo.msg"
  "msg/Feedback.msg"
  "msg/Result.msg"
)

set(srv_files
  "srv/ExecuteCommand.srv"
  "srv/ExecuteCommandAsync.srv"
  "srv/CancelCommand.srv"
  "srv/GetFeedback.srv"
  "srv/GetResult.srv"
  "srv/GetAvailableCommands.srv"
  "srv/GetRunningCommands.srv"
)

set(action_files
  "action/ExecuteCommand.action"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES
    builtin_interfaces
    robotnik_common_msgs
    unique_identifier_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
