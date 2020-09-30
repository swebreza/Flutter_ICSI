import 'package:Flutter_ICSI/myHome.dart';
import 'package:Flutter_ICSI/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_ICSI/loginPage/Screens/Login/login_screen.dart';
import 'package:Flutter_ICSI/loginPage/Screens/Signup/components/background.dart';
import 'package:Flutter_ICSI/loginPage/Screens/Signup/components/or_divider.dart';
import 'package:Flutter_ICSI/loginPage/Screens/Signup/components/social_icon.dart';
import 'package:Flutter_ICSI/loginPage/components/already_have_an_account_acheck.dart';
import 'package:Flutter_ICSI/loginPage/components/rounded_button.dart';
import 'package:Flutter_ICSI/loginPage/components/rounded_input_field.dart';
import 'package:Flutter_ICSI/loginPage/components/rounded_password_field.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/icons/signup.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
                hintText: "Your Email",
                email: email,
                onChanged: (value) {
                  email = value;
                }),
            RoundedPasswordField(
              password: password,
              onChanged: (value) {
                password = value;
              },
            ),
            RoundedButton(
                text: "SIGNUP",
                press: () async {
                  try {
                    final auth = Provider.of(context).auth;

                    String userId = await auth.createUserWithEmailAndPassword(
                      email.trim(),
                      password,
                    );
                    print('Signed in $userId');
                    userId != null
                        ? Navigator.of(context).pushNamed('/myhome')
                        : null;
                  } catch (e) {
                    print(e);
                  }
                }),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/images/icons/facebook.png",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/images/icons/twitter.png",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/images/icons/google-plus.png",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
