import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/presention/fast_laughs_page/widgets/videolistitem.dart';

class FastlaughsPage extends StatelessWidget {
  const FastlaughsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
            scrollDirection: Axis.vertical,
        children: 
          List.generate(10, (index) {
            return VideoListItem(index: index,);
          }),
        
      )),
    );
  }
}
