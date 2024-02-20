part of periphy;

abstract class BluetoothService {
  final String uuid;

  final List<BluetoothCharacteristic> characteristics;

  BluetoothService({required this.uuid, required this.characteristics});
}