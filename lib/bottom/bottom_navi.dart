import 'package:flutter/material.dart';
import 'package:bottombartest/bottom/one.dart'; 
import 'package:bottombartest/bottom/two.dart'; 
import 'package:bottombartest/bottom/three.dart'; 

class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const One(),
    const Two(),
    const Three(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
