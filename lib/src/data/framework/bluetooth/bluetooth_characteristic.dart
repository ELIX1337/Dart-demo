part of periphy;

abstract class BluetoothCharacteristic {
  final String uuid;

  final List<BluetoothCharacteristicProperties> properties;

  BluetoothCharacteristic({required this.uuid, required this.properties});

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
