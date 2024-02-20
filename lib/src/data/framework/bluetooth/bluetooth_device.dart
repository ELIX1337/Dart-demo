part of periphy;

abstract class BluetoothDevice {
  final String platformName;

  final String advName;

  List<BluetoothService>? services;

  BluetoothDevice(this.platformName, this.advName);

  Future<void> connect();

  Future<void> disconnect();

  Future<List<BluetoothService>> readServices();

  Future<List<BluetoothCharacteristic>> readCharacteristics();
}
