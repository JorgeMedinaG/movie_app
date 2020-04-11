import 'package:flutter/material.dart';
import 'package:movie_app/widgets/small_card.dart';

class MovieHorizontal extends StatelessWidget {
  const MovieHorizontal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.0,
        child:  PageView.builder(
          itemCount: 56,
          pageSnapping: true,
          scrollDirection: Axis.horizontal,
          controller: PageController(
            keepPage: true,
            viewportFraction: 0.7,
            initialPage: 1
          ),
          itemBuilder:(BuildContext context, int i ) {
            return SmallCard();
          }
          ),
      );
  }
}