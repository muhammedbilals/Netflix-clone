import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      elevation: 0,
      backgroundColor: Colors.black,
      selectedItemColor:  Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.download),label:"New & Hot"),
       BottomNavigationBarItem(icon: Icon(Icons.download),label:"Fast laughs"),
       BottomNavigationBarItem(icon: Icon(Icons.download),label:"Search"),
       BottomNavigationBarItem(icon: Icon(Icons.download),label:"Downloads"),]
    );
  }
}
