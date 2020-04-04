import 'package:flutter/material.dart';

import 'utils/constants/strings.dart' as Strings;
import 'utils/app_routes.dart' as App;

import 'screens/categories_screen.dart';

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
      initialRoute: CategoriesScreen.routeName,
      routes: App.routes,
        return MaterialPageRoute(builder: (_) => CategoriesScreen());
    );
  }
}
