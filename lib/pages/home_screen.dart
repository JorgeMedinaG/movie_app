import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: MovieHorizontal()
    );
  }
}