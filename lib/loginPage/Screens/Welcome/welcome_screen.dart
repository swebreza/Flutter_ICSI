import 'package:Flutter_ICSI/myHome.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_ICSI/loginPage/Screens/Welcome/components/body.dart';

import '../../../auth.dart';
import '../../../provider.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CheckerWelcome());
  }
}

class CheckerWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Auth auth = Provider.of(context).auth;
    return StreamBuilder<String>(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final bool loggedIn = snapshot.hasData;
          if (loggedIn == true) {
            return MyHome();
          } else {
            return Body();
          }
        }
        return CircularProgressIndicator();
      },
    );
  }
}
