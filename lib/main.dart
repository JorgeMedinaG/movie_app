import 'package:flutter/material.dart';
import 'package:movie_app/utils/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Friend',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: getRoutes(),
      
    );
  }
}