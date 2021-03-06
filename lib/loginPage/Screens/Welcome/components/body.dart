import 'package:Flutter_ICSI/loginPage/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_ICSI/loginPage/Screens/Signup/signup_screen.dart';
import 'package:Flutter_ICSI/loginPage/components/rounded_button.dart';
import 'package:Flutter_ICSI/loginPage/constants.dart'; //constants.dart
import 'package:Flutter_ICSI/loginPage/Screens/Welcome/components/background.dart'
    as prefix;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return prefix.Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO ICSI",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/icons/chat.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
