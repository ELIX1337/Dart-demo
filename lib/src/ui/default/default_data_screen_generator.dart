part of periphy;

class DefaultDataScreenGenerator extends DataScreenGenerator {
  static final DefaultDataScreenGenerator _singleton =
      DefaultDataScreenGenerator.internal();

  factory DefaultDataScreenGenerator() {
    return _singleton;
  }

  DefaultDataScreenGenerator.internal();

  @override
  Widget widgetsLayout() => Column(children: registeredWidgets);
}
