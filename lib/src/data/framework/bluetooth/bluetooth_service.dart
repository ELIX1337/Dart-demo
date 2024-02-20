part of periphy;

abstract class PeriphyBluetoothService {
  final String uuid;

  final List<PeriphyBluetoothCharacteristic> characteristics;

  PeriphyBluetoothService({required this.uuid, required this.characteristics});
}
