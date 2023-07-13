// ignore_for_file: library_private_types_in_public_api

import 'package:ect/Constants/colors.dart';
import 'package:ect/views/service_seller_home/nav_home/seller_home_screen/seller_home.dart';
import 'package:ect/views/service_seller_home/nav_home/seller_profile/seller_profile.dart';
import 'package:ect/views/service_seller_home/seller_order/seller_order.dart';
import 'package:flutter/material.dart';

class SellerBottomNavBar extends StatefulWidget {
  const SellerBottomNavBar({super.key});

  @override
  _SellerBottomNavBarState createState() => _SellerBottomNavBarState();
}

class _SellerBottomNavBarState extends State<SellerBottomNavBar> {
  int _selectedIndex = 2;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text('Chats'),
    const Text('Earnings'),
    const SellerHome(),
    const SellerProfile(),
    const SellerOrderScreen(),
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
            icon: Icon(Icons.attach_money),
            label: 'Earnings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_turned_in),
            label: 'Orders',
          ),
        ],
        selectedItemColor: red,
        unselectedItemColor: customWhite,
      ),
    );
  }
}
