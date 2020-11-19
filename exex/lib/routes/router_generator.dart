

import 'package:exex/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:exex/ui/about_page.dart';
import 'package:exex/ui/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case routeHome : 
        return MaterialPageRoute(builder : (_) => HomePage());
        break;
      case routeAbout:
        return MaterialPageRoute(builder : (_) => AboutPage());
        break;
    }
  }
}