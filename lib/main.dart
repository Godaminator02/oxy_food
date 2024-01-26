// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'login_screen.dart';

void main() {
  runApp(InitialScreen());
}

// ignore: use_key_in_widget_constructors
class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginScreen(),
      title: appName,
      debugShowCheckedModeBanner: false,
    );
  }
}
