import 'package:Flutter_ICSI/drawer/contactus.dart';
import 'package:Flutter_ICSI/main.dart';
import 'package:Flutter_ICSI/notes.dart';
import 'package:Flutter_ICSI/products.dart';
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
      // Validation of correct data type
      // if (args is String) {
      //   return MaterialPageRoute(
      //     builder: (_) => SecondPage(
      //           data: args,
      //         ),
      //   );
      case '/product':
        return MaterialPageRoute(builder: (_) => Products());
      case '/notes':
        return MaterialPageRoute(builder: (_) => Notes());
    }
    // If args is not of the correct type, return an error page.
    // You can also throw an exception while in development.
  }
}
