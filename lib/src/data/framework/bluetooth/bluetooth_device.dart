part of periphy;

abstract class PeriphyBluetoothDevice {
  final String platformName;

  final String advName;

  List<PeriphyBluetoothService>? services;

  PeriphyBluetoothDevice(this.platformName, this.advName);

  Future<void> connect();

  Future<void> disconnect();

  Future<List<PeriphyBluetoothService>> readServices();

  Future<List<PeriphyBluetoothCharacteristic>> readCharacteristics();
}
