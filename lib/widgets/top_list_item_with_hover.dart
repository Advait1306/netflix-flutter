import 'package:flutter/material.dart';
import 'package:netflix_flutter/widgets/hover_movie_trailer.dart';
import 'package:netflix_flutter/widgets/top_list_item.dart';

class TopListItemWithHover extends StatefulWidget {
  const TopListItemWithHover({Key? key}) : super(key: key);

  @override
  State<TopListItemWithHover> createState() => _TopListItemWithHoverState();
}

class _TopListItemWithHoverState extends State<TopListItemWithHover> {
  bool hover = false;
  bool popup = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          hover = value;
          if (!value) {
            popup = false;
          }
        });
        Future.delayed(const Duration(milliseconds: 500), () {
          if (hover == true) {
            setState(() {
              popup = true;
            });
          }
        });
      },
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomLeft,
        children: [
          SizedBox(
            height: 400,
            width: popup ? 400 : null,
          ),
          const TopListItem(index: 1),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            bottom: popup ? 0 : -100,
            left: popup ? 0: -100,
            child: AnimatedScale(
              duration: const Duration(milliseconds: 500),
              scale: popup ? 1.0 : 0.0,
              child: AnimatedOpacity(
                  opacity: popup ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: const HoverMovieTrailer()),
            ),
          ),
        ],
      ),
    );
  }
}
