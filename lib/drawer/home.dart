import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    onTap:
    () => Navigator.popAndPushNamed(context, '/');
  }
}
