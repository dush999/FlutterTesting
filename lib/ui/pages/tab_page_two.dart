import 'package:flutter/material.dart';
import '../../constants/string_constants.dart';

/// Page for the secound tab
class TabPageTwo extends StatelessWidget {
  final String buttonTittle;
  const TabPageTwo({Key? key, required this.buttonTittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('key_button'),
      onPressed: () {
        _showSnackBar(context, StringConstants.snacBarMessage);
      },
      child: const Text(StringConstants.buttonTittle),
    );
  }

  /// show SnackBar
  void _showSnackBar(context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
          SnackBar(key: const Key('key_snackbar'), content: Text(message)));
  }
}
