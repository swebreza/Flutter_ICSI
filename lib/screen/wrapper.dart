import 'package:Flutter_ICSI/loginPage/Screens/Welcome/welcome_screen.dart';
import 'package:Flutter_ICSI/loginPage/constants.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
