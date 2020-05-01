import 'package:flutter/material.dart';

import 'models/meal.dart';
import 'screens/category_meals_screen.dart';
import 'screens/filters_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'data/dummy_data.dart';
import 'screens/tabs_screen.dart';
import 'utils/constants/strings.dart' as Strings;
import 'utils/app_routes.dart' as App;

import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favoriteMeals = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal) {
        // return false -> does not include (exclude)

        if (_filters['gluten'] && !meal.isGlutenFree) return false;
        if (_filters['lactose'] && !meal.isLactoseFree) return false;
        if (_filters['vegan'] && !meal.isVegan) return false;
        if (_filters['vegetarian'] && !meal.isVegetarian) return false;

        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String mealId) {
    final existingIndex =
        _favoriteMeals.indexWhere((meal) => meal.id == mealId);

    if (existingIndex == -1) {
      setState(() {
        _favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealId));
      });

      print('Favorite Added');
    } else {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
      print('Favorite Removed');
    }
  }

  bool _isMealFavorite(String mealId) {
    return _favoriteMeals.any((meal) => meal.id == mealId); // Returns true if condition is satisfied
  }

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
      initialRoute: TabsScreen.routeName,
      routes: {
        TabsScreen.routeName: (_) => TabsScreen(_favoriteMeals),
        CategoriesScreen.routeName: (_) => CategoriesScreen(),
        CategoriesMealsScreen.routeName: (_) =>
            CategoriesMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (_) => MealDetailScreen(_toggleFavorite, _isMealFavorite),
        FiltersScreen.routeName: (_) =>
            FiltersScreen(_filters, _setFilters), // forwards function
      },
      onUnknownRoute: (routeSettings) {
        return MaterialPageRoute(builder: (_) => CategoriesScreen());
      },
    );
  }
}
