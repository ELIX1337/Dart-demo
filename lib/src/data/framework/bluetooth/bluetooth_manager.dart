part of periphy;

abstract class PeriphyBluetoothManager {
  late Future<bool> isSupported;

  late Stream<PeriphyBluetoothAdapterState> adapterState;

  Future startScan();

  Future stopScan();

  Stream<List<PeriphyBluetoothScanResult>> get scanResult;
}

// Mirror of FlutterBluePlus adapter states
enum PeriphyBluetoothAdapterState {
  unknown,
  unavailable,
  unauthorized,
  turningOn,
  on,
  turningOff,
  off
}

class PeriphyBluetoothScanResult {
  final PeriphyBluetoothDevice device;
  final PeriphyAdvertisementData advertisementData;
  final int rssi;

  PeriphyBluetoothScanResult({
    required this.device,
    required this.advertisementData,
    required this.rssi,
  });
}

abstract class PeriphyAdvertisementData {
  final String advName;
  final int? txPowerLevel;
  final bool connectable;
  final Map<int, List<int>> manufacturerData; // key: manufacturerId
  final Map<String, List<int>> serviceData; // key: service uuid
  final List<String> serviceUuids;

  PeriphyAdvertisementData(
      {required this.advName,
      required this.txPowerLevel,
      required this.connectable,
      required this.manufacturerData,
      required this.serviceData,
      required this.serviceUuids});
}
