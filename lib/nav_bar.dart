import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_doctor_proj/home_screen.dart';
import 'package:flutter_doctor_proj/schedualScreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedindex = 0;
  final screens = [
    HomeScreen(),
    Container(),
   Schedualscreen(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black26,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        currentIndex: selectedindex,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
          label: "Home",
          ),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
          label: "Message",
          ),
           BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),
          label: "Scedule",
          ),
           BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: "Setting",
          )
        ],
      ),
    );
  }
}
