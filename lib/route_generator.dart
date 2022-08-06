import 'package:flutter/material.dart';
import 'package:walet/main.dart';
import 'package:walet/pages/homepage.dart';
import 'package:walet/pages/send_page.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    // final args = settings.arguments;
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>Homepage());
      case '/second':
        return MaterialPageRoute(builder: (_)=>SendPage());
      case '/third':
        return MaterialPageRoute(builder: (_)=>PayPage());
      case '/fourth':
        return MaterialPageRoute(builder: (_)=>BillPage());

        return _errorRoute();
      default:
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }

}

