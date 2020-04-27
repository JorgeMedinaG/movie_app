import 'package:flutter/material.dart';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/widgets/small_card.dart';

class MovieHorizontal extends StatelessWidget {

  final double height;
  final double viewportFraction;
  final List movieList;
  final bool bigCard;
  MovieHorizontal( { @required this.height, @required this.viewportFraction, @required this.movieList, this.bigCard}) ;

  
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        child:  PageView.builder(
          itemCount: movieList.length,
          pageSnapping: false,
          scrollDirection: Axis.horizontal,
          controller: PageController(
            keepPage: true,
            viewportFraction: viewportFraction,
            initialPage: 1
          ),
          itemBuilder:(BuildContext context, int i ) {
            return _showCard(bigCard, movieList[i]);
          }
          ),
      );
  }


  Widget _showCard(bool bigCard, dynamic movie){

    if (bigCard){
      return _bigCard(movie);
    } else {
      return _smallCard(movie);
    }

  }

  Widget _bigCard(dynamic movie){
       return Container(
          height: 120.0,
          width: 200.0,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight : Radius.circular(30.0), bottomLeft : Radius.circular(30.0)),
              child: FadeInImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(movie.getBackgroundImg()),
                    placeholder: NetworkImage("https://i.pinimg.com/originals/a2/dc/96/a2dc9668f2cf170fe3efeb263128b0e7.gif"),
                  ),
             
            ),
          )
        );
  }

  Widget _smallCard(dynamic movie){
       return Container(
          height: 120.0,
          width: 200.0,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight : Radius.circular(30.0), bottomLeft : Radius.circular(30.0)),
              child: FadeInImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(movie.getPosterImg()),
                    placeholder: NetworkImage("https://i.pinimg.com/originals/a2/dc/96/a2dc9668f2cf170fe3efeb263128b0e7.gif"),
                  ),
             
            ),
          )
        );
  }


}