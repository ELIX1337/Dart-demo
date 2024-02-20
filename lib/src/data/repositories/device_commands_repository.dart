part of periphy;

class DeviceCommandsRepository {
  final List<DeviceCommand> commands;

  DeviceCommandsRepository(this.commands);

  void addCommand(DeviceCommand command) {
    commands.add(command);
  }
}
