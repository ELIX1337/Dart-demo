part of periphy;

abstract class BluetoothManager {
  late Future<bool> isSupported;

  late Stream<BluetoothAdapterState> adapterState;

  Future startScan();

  Future stopScan();

  Stream<List<BluetoothScanResult>> get scanResult;

  Future<void> connect();

  Future<void> disconnect();
}

// Mirror of FlutterBluePlus adapter states
enum BluetoothAdapterState {
  unknown,
  unavailable,
  unauthorized,
  turningOn,
  on,
  turningOff,
  off
}

class BluetoothScanResult {
  final BluetoothDevice device;
  final AdvertisementData advertisementData;
  final int rssi;

  BluetoothScanResult({
    required this.device,
    required this.advertisementData,
    required this.rssi,
  });
}

abstract class AdvertisementData {
  final String advName;
  final int? txPowerLevel;
  final bool connectable;
  final Map<int, List<int>> manufacturerData; // key: manufacturerId
  final Map<String, List<int>> serviceData; // key: service uuid
  final List<String> serviceUuids;

  AdvertisementData(
      {required this.advName,
      required this.txPowerLevel,
      required this.connectable,
      required this.manufacturerData,
      required this.serviceData,
      required this.serviceUuids});
}
