# robotnik_supervisor_msg

Interfaces to manage Robotnik stacks and modules. Used by
- https://github.com/RobotnikAutomation/robotnik_docker_supervisor

## Services (.srv)
* [DownStack](./srv/DownStack.srv): Service to shut down a specific stack, ensuring all associated modules are stopped gracefully.


* [GetModuleList](./srv/GetModuleList.srv): Service to retrieve a list of all available modules in the system.


* [GetStackList](./srv/GetStackList.srv): Service to fetch a list of all defined stacks in the system.


* [GetStackLogs](./srv/GetStackLogs.srv): Service to obtain the logs of a specific stack for debugging or monitoring purposes.


* [GetStackStatus](./srv/GetStackStatus.srv): Service to check the current status of a specific stack, including its running state and health.


* [RestartStack](./srv/RestartStack.srv): Service to restart a specific stack, stopping and starting all associated modules.


* [StartModule](./srv/StartModule.srv): Service to start a specific module within a stack.


* [StopModule](./srv/StopModule.srv): Service to stop a specific module within a stack.


* [StopStack](./srv/StopStack.srv): Service to stop a specific stack, halting all associated modules.

