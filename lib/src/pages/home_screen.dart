import 'package:flutter/material.dart';
import 'package:movie_app/src/providers/media_provider.dart';
import 'package:movie_app/src/widgets/movie_page.dart';

class HomePage extends StatelessWidget {


  final _movieProvider = MovieProvider();
  final _tvshowProvider = TvShowProvider();
  final _mediaProvider = MediaProvider();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.black ,
        actions: <Widget>[
          IconButton(
            icon: Icon( Icons.search), 
            color: Colors.white,
            onPressed: (){}
            )
        ],
        title: Text("Movie Friend"),
      ),
      body:ListView(
              children: <Widget>[
                _sectionTitle("All Trendings"),
                _trending(),
                _sectionTitle("Trending Movies"),
                _trendingMovies(),
                _sectionTitle("Trending TV Shows"),
                _trendingShows(),
                // MovieHorizontal( height: 150.0, viewportFraction: 0.3,),
              ],
            ),
        
      );
      
    
  }

  Widget _sectionTitle(String text){


    return Container(
      padding: EdgeInsets.only( left: 15.0, bottom: 5.0, top: 5.0),
      child: Text( text,
        style: TextStyle(
          color: Colors.white
          )
        ),
    );
  }

  Widget _trendingMovies() {

    return FutureBuilder(
      future: _movieProvider.getTrending(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {

        if (snapshot.hasData) {
          return MovieHorizontal( height: 170.0, viewportFraction: 0.3,
            movieList: snapshot.data, bigCard: false,
            );        
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

      },
    );
  }

  Widget _trendingShows() {


    return FutureBuilder(
      future: _tvshowProvider.getTrending(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {

        if (snapshot.hasData){
          return MovieHorizontal(height: 170.0, viewportFraction: 0.3, movieList: snapshot.data, bigCard: false);
        } else {
          return Center( 
            child: CircularProgressIndicator() ,
            );
        }
      },
    );

  }

  Widget _trending() {

    return FutureBuilder(
      future: _mediaProvider.getTrending(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData){
          return MovieHorizontal(height: 170.0, viewportFraction: 0.7, movieList: snapshot.data, bigCard: true,);
        } else {
          return Center( 
            child: CircularProgressIndicator() ,
            );
        }
      },
    );
    

  }

}