import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.domestika.org/c_fit,dpr_1.0,f_auto,t_base_params,w_820/v1588506363/content-items/004/426/631/7ebcf767947303.5b4c5d6482ebf-original.png?1588506363"))),
            ),
          ],
        ),
        Positioned(
          bottom: -10,
          left: 20,
          child: BorderedText(
            strokeColor: Colors.black,
            strokeWidth: 10.0,
            child: Text(
              '${index + 1}',
              style: TextStyle(fontSize: 110),
            ),
          ),
        ),
      ],
    );
  }
}
