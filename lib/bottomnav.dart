import 'package:flutter/material.dart';
import 'package:online_courseapp/class/myclass_page.dart';
import 'package:online_courseapp/notification_page.dart';
import 'package:online_courseapp/profile_page.dart';

import 'class/listcourse_page.dart';
import 'homepage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedNav = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNav = index;
    });
  }

  final _widgetOptions = [HomePage(),ListCoursePage(), MyClass(),NotificationPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5FF),
      body: _widgetOptions[_selectedNav],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _changeSelectedNavBar,
          currentIndex: _selectedNav,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: new Image.asset(
                  'assets/icon/ichome.png', color: Colors.grey,
                  height: 20,
                ),
                activeIcon: new Image.asset(
                  'assets/icon/ichome.png',
                  height: 20,
                  color: Color(0xff0096C7),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: new Image.asset(
                  'assets/icon/iclove.png',
                  height: 20,
                ),
                activeIcon: new Image.asset(
                  'assets/icon/iclove.png',
                  height: 20,
                  color: Color(0xff0096C7),
                ),
                label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: new Image.asset(
                  'assets/icon/icplay.png',
                  height: 20,
                ),
                activeIcon: new Image.asset(
                  'assets/icon/icplay.png',
                  height: 20,
                  color: Color(0xff0096C7),
                ),
                label: 'Class'),
            BottomNavigationBarItem(
                icon: new Image.asset(
                  'assets/icon/icbell.png',
                  height: 24,
                ),
                activeIcon: new Image.asset(
                  'assets/icon/icbell.png',
                  height: 24,
                  color: Color(0xff0096c7),
                ),
                label: 'Notification'),

            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: new CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/image/imgprofil.png'),
                  ),
                ),
                activeIcon:  CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xff0096c7),
                  child: new CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/image/imgprofil.png'),
                  ),
                ),
                label: 'Profile'),
          ]),
    );
  }
}
