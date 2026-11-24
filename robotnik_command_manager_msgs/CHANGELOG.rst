
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package robotnik_command_manager_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Forthcoming
-----------
- API 2.0 uses JSON object strings in ROS payload and command envelope fields.
- ``Result`` includes execution status constants, status, success and diagnostics.
- ``ExecuteCommandAsync`` acknowledges dispatch with command identification,
  success and diagnostics; ``CancelCommand`` acknowledges cancellation requests
  with success and diagnostics.
- ``CommandSpec`` describes the command name, category, ROS interface and server
  without legacy argument or output templates.
- ``CommandSpec.description`` carries the configured description for
  ``GetAvailableCommands`` clients.
- Removed unused ``robotnik_common_msgs`` and ``unique_identifier_msgs``
  dependencies. Rebuild all ROS clients and servers for these breaking changes.
