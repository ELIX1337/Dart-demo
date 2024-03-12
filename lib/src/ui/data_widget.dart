part of periphy;

abstract class DataWidget<T> extends StatefulWidget {
  final DataModel<T> dataModel;

  const DataWidget({Key? key, required this.dataModel}) : super(key: key);

  // Переопределение метода buildWithStream обязательно для конкретных классов
  @override
  State<DataWidget<T>> createState() => _DataWidgetState<T>();

  Widget buildWithStream(BuildContext context, T? data);
}

class _DataWidgetState<T> extends State<DataWidget<T>> {
  late StreamSubscription<T> _subscription;

  @override
  void initState() async {
    super.initState();
    // is it ok?
    _subscription = widget.dataModel.dataStream.listen((data) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
      stream: widget.dataModel.dataStream,
      initialData: widget.dataModel.data,
      builder: (context, snapshot) {
        // Вызов переопределенного метода buildWithStream из конкретного класса
        return widget.buildWithStream(context, snapshot.data);
      },
    );
  }
}
