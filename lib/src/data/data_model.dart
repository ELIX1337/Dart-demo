part of periphy;

abstract class DataModel<T> {
  T _data;
  late StreamController<T> _dataController;

  DataModel(this._data) {
    _dataController = StreamController<T>.broadcast();
  }

  T get data => _data;

  Stream<T> get dataStream => _dataController.stream;

  void setData(T newData) {
    _data = newData;
    _dataController.add(_data);
  }

  void dispose() {
    _dataController.close();
  }
}
