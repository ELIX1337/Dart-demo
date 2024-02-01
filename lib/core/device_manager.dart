import 'package:dart_project/core/connection_manager.dart';
import 'package:dart_project/data/entities/device_command.dart';

class DeviceManager {
  final ConnectionManager connectionManager;
  //final DeviceCommandsRepository deviceCommandsRepository;
  final List<DeviceCommand> _commands;
  final List<Function(DeviceCommand)> _uiCallbacks = [];

  DeviceManager(this.connectionManager, this._commands);

  // Registering callbacks for external UI
  void registerUICallbacks(Function(DeviceCommand) callback) {
    for (final command in _commands) {
      _uiCallbacks.add(callback);
      callback(command);
    }
  }

  void executeCommand(String commandName) {
    // Looking for existing command by its name
    var selectedCommand =
        _commands.firstWhere((command) => command.key == commandName);

    // Executing
    connectionManager.sendCommand(selectedCommand);

    // Calling all registered callbacks for UI update
    for (final callback in _uiCallbacks) {
      callback(selectedCommand);
    }
  }

  Map<String, dynamic> getCurrentDeviceState() {
    // Getting device data
    return {};
  }

  void connect() {
    connectionManager.connect();
  }

  void disconnect() {
    connectionManager.disconnect();
  }

  Stream<String> receiveData() {
    return connectionManager.receiveData();
  }
}
