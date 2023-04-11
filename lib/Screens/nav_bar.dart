// ignore_for_file: unused_field, prefer_final_fields

import 'package:book_ticket/Screens/home_screen.dart';
import 'package:book_ticket/Screens/hotel_screen.dart';
import 'package:book_ticket/Screens/search_screen.dart';
import 'package:book_ticket/Screens/ticket_screen.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Text('Profile'),
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
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primary,
        unselectedItemColor: const Color(0XFF526480),
        elevation: 10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            label: 'Search',
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            label: 'Airplane Ticket',
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
              label: 'Profile',
              activeIcon:
                  Icon(FluentSystemIcons.ic_fluent_person_accounts_filled)),
        ],
      ),
    );
  }
}
