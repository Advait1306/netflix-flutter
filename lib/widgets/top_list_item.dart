import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopListItem extends StatelessWidget {
  final int index;
  const TopListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double height = 250;

    return SizedBox(

      height: height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset("assets/numbers/$index.svg",
              fit: BoxFit.fitHeight, height: height),
          Transform.translate(
              offset: const Offset(-30, 0),
              child: Image.asset("assets/thumbnails/thumb1.jpg"))
        ],
      ),
    );
  }
}
