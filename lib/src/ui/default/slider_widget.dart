part of periphy;

class SliderWidget extends DataWidget<double> {
  final double min;
  final double max;
  const SliderWidget(
      {Key? key,
      required DataModel<double> function,
      required this.min,
      required this.max})
      : super(dataModel: function, key: key);

  @override
  Widget buildWithStream(BuildContext context, double? data) {
    return Slider(
      min: min,
      max: max,
      value: data ?? min,
      onChanged: (newValue) {
        dataModel.setData(newValue);
        print('Sending data from SliderWidget $newValue');
      },
    );
  }
}
