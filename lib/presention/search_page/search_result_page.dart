import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presention/search_page/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & TV'),
        sboxH,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.5,
            children: List.generate(
              20,
              (index) {
                return MainCard();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl = [
      'https://www.flickeringmyth.com/wp-content/uploads/2021/12/Wolf-of-Wall-Street-4k-600x771-1.jpg'
    ];

    final Size size = MediaQuery.of(context).size;
    return Container(
      // width: size.width * 0.35,
      // height: 70,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imageurl[0]), fit: BoxFit.cover)),
    );
  }
}
