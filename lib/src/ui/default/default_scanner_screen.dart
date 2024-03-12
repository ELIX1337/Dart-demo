part of periphy;

class DefaultBleScannerScreen extends StatefulWidget {
  final BluetoothDeviceController bluetoothController;

  const DefaultBleScannerScreen({super.key, required this.bluetoothController});

  @override
  State<StatefulWidget> createState() {
    return _DefaultBleScannerScreenState();
  }
}

class _DefaultBleScannerScreenState extends State<DefaultBleScannerScreen> {
  @override
  Widget build(BuildContext context) {
    final scanResult = widget.bluetoothController.scanResult;

    return StreamBuilder(
        stream: scanResult,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Expanded(
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final result = snapshot.data![index];
                      return ListTile(
                          title: Text('device name: ${result.deviceName}'),
                          leading: Text('rssi: ${result.rssi}'),
                          trailing: Text('tx: ${result.txPowerLevel}'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DefaultDeviceScreen(
                                        bluetoothController:
                                            widget.bluetoothController,
                                        scanResult: result)));
                          });
                    }));
          } else if (snapshot.hasError) {
            return Text("Snapshot error: ${snapshot.error}");
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
