import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals_screen.dart';

import 'screens/categories_screen.dart';

import 'utils/constants/Strings.dart' as Strings;
import 'utils/AppRoutes.dart' as App;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amberAccent,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: const Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: const Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: CategoriesScreen.routeName,
      routes: App.routes,
    );
  }
}
