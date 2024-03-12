part of periphy;

class SwitchWidget extends DataWidget<bool> {
  const SwitchWidget({Key? key, required DataModel<bool> function})
      : super(dataModel: function, key: key);

  @override
  Widget buildWithStream(BuildContext context, bool? data) {
    return Switch(
      value: data ?? false,
      onChanged: (newValue) {
        dataModel.setData(newValue);
        print('Sending data from SwitchWidget $newValue');
      },
    );
  }
}
