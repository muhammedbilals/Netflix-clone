import 'package:flutter/cupertino.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 130,
        height: 230,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.domestika.org/c_fit,dpr_1.0,f_auto,t_base_params,w_820/v1588506363/content-items/004/426/631/7ebcf767947303.5b4c5d6482ebf-original.png?1588506363"))),
      ),
    );
  }
}
