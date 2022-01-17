import 'package:flutter/material.dart';
import 'package:flutter_testing/ui/pages/tab_host_page.dart';
import 'constants/string_constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConstants.appTitle,
      home: TabHostPage(),
    );
  }
}
