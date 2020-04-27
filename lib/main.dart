import 'package:flutter/material.dart';
import 'package:movie_app/src/utils/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      title: 'TV Friend',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: getRoutes(),
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(33, 34, 38, 1),
      )
    );
  }
}