import 'package:bottom/Screens/Camera_Screen.dart';
import 'package:bottom/Screens/Home_screen.dart';
import 'package:bottom/Screens/Search_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bottom_Navigation());
}

class Bottom_Navigation extends StatefulWidget {
  const Bottom_Navigation({super.key});

  @override
  State<Bottom_Navigation> createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bottom_navigation(),
    );
  }
}

class Bottom_navigation extends StatefulWidget {
  const Bottom_navigation({super.key});

  @override
  State<Bottom_navigation> createState() => _Bottom_navigationState();
}

class _Bottom_navigationState extends State<Bottom_navigation> {
  final int _selectedindex = 0;
  static const List<Widget> _widgetOptions = [Home(), Camera(), call()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigationbar"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera')
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.blue,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<Widget>('_widgetOptions', _widgetOptions));
    properties.add(IntProperty('_selectedindex', _selectedindex));
  }
}
