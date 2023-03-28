import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presention/fast_laughs_page/widgets/videolistitem.dart';
import 'package:netflix_clone/widgets/appbarwidget.dart';

class NewandHotPage extends StatelessWidget {
  const NewandHotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bgcolor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: bgcolor,
            title: Text(
              'Hot & New',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              Icon(
                Icons.cast_sharp,
                color: bgwhite,
                size: 30,
              ),
              sboxW,
              Container(
                width: 30,
                height: 30,
                color: Colors.cyan,
              ),
              sboxW,
            ],
            bottom: TabBar(
              labelColor: bgcolor,
              unselectedLabelColor: bgwhite,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: bgwhite,
              ),
              tabs: [
                Tab(
                  text: '🍿Coming Soon ',
                ),
                Tab(
                  text: '👀Everyones watching ',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(context),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      children: [
        sboxH,
        CmingSoonWidget(size: size),
        CmingSoonWidget(size: size),
      ],
    );
  }

  Widget _buildEveryonesWatching() {
    return Container();
  }
}

class CmingSoonWidget extends StatelessWidget {
  const CmingSoonWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sboxH,
        SizedBox(
          height: 400,
          child: Column(
            children: [
              Text('FEB',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: bgwhite.withOpacity(0.5))),
              Text('11',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ],
          ),
          width: 50,
        ),
        Container(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.network(
                    'https://mir-s3-cdn-cf.behance.net/project_modules/fs/706b9474134343.5c239806af449.jpg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tall Girl 2',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Spacer(),
                  VideoActionsWidget(icon: Icons.alarm, title: 'Remind Me'),
                  sboxW,
                  VideoActionsWidget(icon: Icons.info, title: 'info'),
                  sboxW
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Coming on Friday',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: bgwhite.withOpacity(0.5))),
                  sboxH,
                  Text('Tall Girl 2',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  sboxH,
                  Text(
                      'The film stars Ava Michelle, Griffin Gluck, Sabrina Carpenter, Paris Berelc, Luke Eisner, Clara Wilsey, Anjelika Washington, Rico Paris, Angela Kinsey, and Steve Zahn. It was released by Netflix on September 13, 2019.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: bgwhite.withOpacity(0.5))),
                ],
              )
            ],
          ),
          width: size.width - 50,
          height: 400,
        ),
      ],
    );
  }
}
