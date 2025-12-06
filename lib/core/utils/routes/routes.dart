import 'package:flutter/material.dart';
import 'package:mvvmproject/core/utils/routes/routes_name.dart';
import 'package:mvvmproject/presentation/view/login_screen.dart';

import '../../../presentation/view/home_screen.dart';

class Routes {
  static  Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context)=>HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context)=>LoginScreen());
      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Text('no route defined'),
          );
        });
    }
  }
}