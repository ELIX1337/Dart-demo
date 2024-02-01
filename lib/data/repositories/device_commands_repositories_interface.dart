import 'package:dart_project/data/entities/device_command.dart';

abstract class DeviceCommandsRepositoryInterface {
  List<DeviceCommand> getSupportedCommands();
}
