// ignore_for_file: library_private_types_in_public_api

import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/nav_home/cutomer_profile.dart';
import 'package:ect/views/customer_home/nav_home/favorites.dart';
import 'package:ect/views/customer_home/nav_home/home.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 2;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text('Chats'),
    const FavoriteScreen(),
    const CustomerHome(),
    const CustomerProfile(),
    const Text('Cart'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: customPurple,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Add to Cart',
          ),
        ],
        selectedItemColor: red,
        unselectedItemColor: customWhite,
      ),
    );
  }
}
