import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(33, 34, 38, 1),
            
          ),
          ListView(
            children: <Widget>[
              _sectionTitle("Nuevas"),
              MovieHorizontal( height: 150.0, viewportFraction: 0.7,),
              _sectionTitle("Trending"),
              MovieHorizontal( height: 150.0, viewportFraction: 0.3,),
            ],
          ),
        ],
      )
      
    );
  }

  _sectionTitle(String text){

    return Container(
      padding: EdgeInsets.only( left: 15.0, bottom: 5.0, top: 5.0),
      child: Text( text,
        style: TextStyle(
          color: Colors.white
          )
        ),
    );
  }
}