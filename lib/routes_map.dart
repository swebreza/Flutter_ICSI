import 'package:Flutter_ICSI/drawer/contactus.dart';
import 'package:Flutter_ICSI/main.dart';
import 'package:Flutter_ICSI/notes.dart';
import 'package:Flutter_ICSI/products.dart';
import 'package:Flutter_ICSI/screen/wrapper.dart';
//import 'package:Flutter_ICSI/service/authScreen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyApp());
      case '/contact':
        return MaterialPageRoute(builder: (_) => ContactUs());
      case '/product':
        return MaterialPageRoute(builder: (_) => Products());
      case '/notes':
        return MaterialPageRoute(builder: (_) => Notes());
      case '/signin':
        return MaterialPageRoute(builder: (_) => Wrapper());
    }
    // If args is not of the correct type, return an error page.
    // You can also throw an exception while in development.
  }
}
