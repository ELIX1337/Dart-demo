part of periphy;

abstract class PeriphyBluetoothCharacteristic {
  final String uuid;

  final List<BluetoothCharacteristicProperties> properties;

  PeriphyBluetoothCharacteristic(
      {required this.uuid, required this.properties});

  void write(bool withResponse);

  Stream<List<int>> read();
}

enum BluetoothCharacteristicProperties {
  broadcast,
  read,
  writeWithoutResponse,
  write,
  notify,
  indicate,
  authenticatedSignedWrites,
  extendedProperties,
  notifyEncryptionRequired,
  indicateEncryptionRequired
}
