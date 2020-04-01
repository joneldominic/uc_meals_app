import 'package:flutter/material.dart';

import 'package:meals_app/screens/home_screen.dart';

import 'package:meals_app/utils/constants/Strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}