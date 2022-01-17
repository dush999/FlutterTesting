import 'package:flutter/material.dart';
import 'package:flutter_testing/ui/widgets/app_bar_widget.dart';
import '../../constants/string_constants.dart';
import 'pages.dart';


/// Class for hosting bottom navigation bar with 2 tabs
class TabHostPage extends StatefulWidget {
  const TabHostPage({Key? key}) : super(key: key);

  @override
  State<TabHostPage> createState() => _TabHostPageState();
}

class _TabHostPageState extends State<TabHostPage> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = <Widget>[
    const TabPageOne(
      textTitle: StringConstants.textTitle,
    ),
    const TabPageTwo(
      buttonTittle: StringConstants.buttonTittle,
    ),
  ];

  /// function for hanlding state for bottomNavigationBar onTap()
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBarWidget(
        appBarTitle: StringConstants.appBarTitle,
      ), 
      body: Center(
        child: _tabs.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        key: const Key('key_bottom_nav_bar'),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            tooltip: 'Tab 1',
            icon: Icon(Icons.home),
            label: StringConstants.tabItem1Title,
          ),
          BottomNavigationBarItem(
             tooltip: 'Tab 2',
            icon: Icon(Icons.alarm),
            label: StringConstants.tabItem2Title ,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
