part of periphy;

abstract class DeviceConnectable {
  Future<void> connect();

  Future<void> disconnect();

  Future<void> sendData(int data);

  Future<void> readData(int data);

  Stream<String> receiveData();
}
