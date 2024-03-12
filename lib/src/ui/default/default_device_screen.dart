part of periphy;

class DefaultDeviceScreen extends StatelessWidget {
  final BluetoothDeviceController bluetoothController;
  final BluetoothScanResult scanResult;

  const DefaultDeviceScreen(
      {super.key, required this.bluetoothController, required this.scanResult});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(scanResult.deviceName),
          ),
          body: DefaultDataScreenGenerator().generateUI()),
    );
  }
}
