part of periphy;

abstract class BluetoothDeviceController implements DeviceConnectable {
  late Future<bool> isSupported;

  late Stream<BluetoothAdapterState> adapterState;

  Stream<List<BluetoothScanResult>> get scanResult;

  Future turnOn();

  Future turnOff();

  Future startScan();

  Future stopScan();
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
  final String deviceName;
  final int txPowerLevel;
  final int rssi;

  BluetoothScanResult({
    required this.deviceName,
    required this.txPowerLevel,
    required this.rssi,
  });
}
