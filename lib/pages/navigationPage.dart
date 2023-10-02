import 'package:drivestop/pages/profilePage.dart';
import 'package:drivestop/pages/userHomePage.dart';
import 'package:flutter/material.dart';
import 'locationPage.dart';


class NavigationPage extends StatefulWidget {
  final String userId;
  const NavigationPage({Key? key, required this.userId}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0; // Index for the selected tab

  // Define the pages for each tab
  final List<Widget> _pages = [
    UserHomePage(),
    LocationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex], // Show the selected page
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff445D48), // Background color of the navigation bar
        selectedItemColor: Colors.yellow, // Color of selected icon and text
        unselectedItemColor: Colors.white, // Color of unselected icon and text
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Change the current tab
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

