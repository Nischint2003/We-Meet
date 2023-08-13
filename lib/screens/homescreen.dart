import 'package:flutter/material.dart';
import 'package:v_meet/utils/colors.dart';
import 'package:v_meet/widgets/history_meeting_page.dart';

import 'package:v_meet/widgets/meeting_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  void onPageChanged(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> pages = [
    const MeetChatPage(),
    const HistoryMeetingPage(),
    const Text('Contacts'),
    const Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text('WE MEET'),
        centerTitle: true,
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 16,
        onTap: onPageChanged,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outlined),
            label: 'Meet & Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.punch_clock),
            label: 'Meeting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.white,
        backgroundColor: footerColor,
      ),
    );
  }
}
