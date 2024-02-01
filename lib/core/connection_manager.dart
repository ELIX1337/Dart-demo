import '../data/entities/device_command.dart';

abstract class ConnectionManager {
  Future<void> connect();

  Future<void> disconnect();

  Future<void> sendCommand(DeviceCommand command);

  Future<void> readCommand(DeviceCommand command);

  Stream<String> receiveData();
}
