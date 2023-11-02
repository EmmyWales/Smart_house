import 'package:flutter/material.dart';
import 'package:smart_house/page/homepage.dart';
import 'package:smart_house/page/profile.dart';
import 'package:smart_house/page/smart_screen.dart';
import 'package:smart_house/utils/colors.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int currentIndex = 0;
  List<Widget> screens = [
    const MyHomePage(),
    const SmartScreen(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: screens[currentIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 2,
              )
            ]),
            height: 100,
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              fixedColor: Appcolor.blue,
              iconSize: 30,
              type: BottomNavigationBarType.fixed,
              onTap: (value) => setState(() => currentIndex = value),
              selectedIconTheme: IconThemeData(color: Appcolor.blue),
              selectedLabelStyle: TextStyle(color: Appcolor.blue),
              unselectedLabelStyle: TextStyle(color: Appcolor.grey),
              unselectedItemColor: Appcolor.grey,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.light_mode_outlined), label: "Smart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outlined), label: "Profile"),
              ],
            ),
          ),
        ),
        onWillPop: () async => false);
  }
}
