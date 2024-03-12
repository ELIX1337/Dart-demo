part of periphy;

abstract class DataScreenGenerator extends StatefulWidget {
  final List<Widget> registeredWidgets = [];

  void registerWidget(Widget widget) {
    registeredWidgets.add(widget);
  }

  Widget widgetsLayout();

  Widget generateUI() {
    if (registeredWidgets.isNotEmpty) {
      return widgetsLayout();
    } else {
      return Center(
        child: Text('Any widget is not registered'),
      );
    }
  }

  @override
  State<StatefulWidget> createState() => _DataScreenGeneratorState();
}

class _DataScreenGeneratorState extends State<DataScreenGenerator> {
  @override
  Widget build(BuildContext context) => widget.generateUI();

  @override
  void dispose() {
    widget.registeredWidgets.clear();
    super.dispose();
  }
}
