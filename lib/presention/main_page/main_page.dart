import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presention/main_page/bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgcolor,
      body: Center(child: Text('main page')),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}