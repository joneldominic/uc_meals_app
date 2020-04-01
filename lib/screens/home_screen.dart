import 'package:flutter/material.dart';

import 'package:meals_app/utils/common/Strings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
      ),
      body: Center(
        child: Text('Navigation Time'),
      ),
    );
  }
}
