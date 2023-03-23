import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final image = [' '];
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: bgcolor.withOpacity(0.5),
                  radius: 20,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.volume_mute,
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.flickeringmyth.com/wp-content/uploads/2021/12/Wolf-of-Wall-Street-4k-600x771-1.jpg'),
                    ),
                    VideoActions(icon: (Icons.emoji_emotions), title: 'LOL'),
                    VideoActions(icon: (Icons.add), title: 'My List'),
                    VideoActions(icon: (Icons.share), title: 'Share'),
                    VideoActions(icon: (Icons.play_arrow), title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(color: bgwhite, fontSize: 16),
          )
        ],
      ),
    );
  }
}
