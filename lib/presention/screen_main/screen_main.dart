import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presention/downloads_page/downloads_page.dart';
import 'package:netflix_clone/presention/fast_laughs_page/fast_laughs_page.dart';
import 'package:netflix_clone/presention/main_page/bottom_navigation.dart';
import 'package:netflix_clone/presention/main_page/main_page.dart';
import 'package:netflix_clone/presention/new_and_hot_page/new_and_hot_page.dart';
import 'package:netflix_clone/presention/search_page/search_page.dart';

class ScreenMain extends StatelessWidget {
   ScreenMain({super.key});

  List _pages = [
    HomeScreen(),
    NewandHotPage(),
    FastlaughsPage(),
    SearchPage(),
    DownloadsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int value, _) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}