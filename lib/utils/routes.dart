import 'package:flutter/widgets.dart';
import 'package:movie_app/pages/home_screen.dart';



Map<String, WidgetBuilder>  getRoutes(){

  Map<String, WidgetBuilder> routeMap = {
    'home'  : (BuildContext context) => HomePage()
  };

  return routeMap;
}