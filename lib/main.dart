import 'package:flutter/material.dart';
import 'package:sos_application/Contacts.dart';
import 'package:sos_application/home.dart';
import 'package:sos_application/FAQ.dart';
import 'package:sos_application/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOS',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppNavBar extends StatefulWidget {
  @override
  _AppNavBarState createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [Home(), Contacts(), FaqPage()];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'SOS',
            // backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: 'Contacts',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_support),
              label: 'FAQ',
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
