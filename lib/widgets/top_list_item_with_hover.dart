import 'dart:developer';

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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (value){
        log("Hover value: $value");
        setState(() {
          hover = value;
        });
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TopListItem(index: 1),
          if(hover) HoverMovieTrailer(),
        ],
      ),
    );
  }
}
