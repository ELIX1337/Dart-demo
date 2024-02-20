part of periphy;

class DeviceController {
  final ConnectionManager connectionManager;

  DeviceController(this.connectionManager);

  Future<void> connect() async {
    connectionManager.connect();
  }

  Future<void> disconnect() async {
    connectionManager.disconnect();
  }

  Future<void> sendCommand(DeviceCommand command) async {
    //connectionManager.sendData("${command.key}:${command.value}")
    connectionManager.sendCommand(command);
  }

  Future<void> readCommand(DeviceCommand command) async {
    connectionManager.readCommand(command);
  }

  // more functions
}
