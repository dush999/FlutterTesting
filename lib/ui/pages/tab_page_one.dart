import 'package:flutter/widgets.dart';

/// Page for the first tab
class TabPageOne extends StatelessWidget {
  final String textTitle;

  const TabPageOne({Key? key, required this.textTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(textTitle, key: const Key('key_text')),
    );
  }
}
