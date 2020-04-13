import 'package:flutter/material.dart';
import 'package:movie_app/widgets/small_card.dart';

class MovieHorizontal extends StatelessWidget {

  final double height;
  final double viewportFraction;
  MovieHorizontal( { @required this.height, @required this.viewportFraction }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        child:  PageView.builder(
          itemCount: 56,
          pageSnapping: false,
          scrollDirection: Axis.horizontal,
          controller: PageController(
            keepPage: true,
            viewportFraction: viewportFraction,
            initialPage: 1
          ),
          itemBuilder:(BuildContext context, int i ) {
            return SmallCard();
          }
          ),
      );
  }
}