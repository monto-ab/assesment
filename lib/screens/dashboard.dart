import 'package:assesment/screens/homepage.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _body() {
    if (_selectedIndex == 0) {
      return const HomePage();
    } else if (_selectedIndex == 1) {
      return const Center(child: Text('History'));
    } else if (_selectedIndex == 2) {
      return const Center(child: Text('Card'));
    } else {
      return const Center(child: Text('Profile'));
    }
  }

  _appBar() {
    if (_selectedIndex == 0) {
      return PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          titleSpacing: 0,
          leadingWidth: 75,
          backgroundColor: Colors.white70,
          leading: CircleAvatar(
            backgroundColor: Colors.amber.shade800,
            child: const Text('PB'),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                size: 40,
                weight: 20,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
          ],
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                'Ballack Jr',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  Widget _bootomNavigation() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      backgroundColor: Colors.grey.shade500,
      unselectedItemColor: Colors.grey.shade500,
      selectedItemColor: Colors.deepPurple.shade600,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.history_rounded), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Card'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), label: 'Profile'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: _body(),
        bottomNavigationBar: _bootomNavigation());
  }
}
