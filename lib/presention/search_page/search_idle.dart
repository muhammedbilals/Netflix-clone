import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presention/search_page/title.dart';

class SearchIdle extends StatelessWidget {
  SearchIdle({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: "Top Searches"),
        sboxH,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => TopSearchItemTile(),
            separatorBuilder: (context, index) => sboxH,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  TopSearchItemTile({super.key});
  final imageurl = [
    'https://www.flickeringmyth.com/wp-content/uploads/2021/12/Wolf-of-Wall-Street-4k-600x771-1.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.35,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageurl[0]), fit: BoxFit.cover)),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Movie Name',
              style: TextStyle(
                  color: bgwhite, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: bgwhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: bgcolor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
