import 'package:Flutter_ICSI/auth.dart';
import 'package:Flutter_ICSI/loginPage/Screens/Welcome/welcome_screen.dart';
import 'package:Flutter_ICSI/provider.dart';
import 'package:Flutter_ICSI/routes_map.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}
//-----------------------------------------------------------

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        auth: Auth(),
        child: MaterialApp(
          //Routes------------------------------------------------
          initialRoute: '/',
          onGenerateRoute: RouteGenerator.generateRoute,
          //Routes------------------------------------------------

          debugShowCheckedModeBanner: false,
          title: 'ICSI',
          theme: ThemeData(
            primarySwatch: Colors.lime,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),

          home: WelcomeScreen(),
        ));
  }
}
