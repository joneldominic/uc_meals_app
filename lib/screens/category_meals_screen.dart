import 'package:flutter/material.dart';

import '../data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  static const routeName = '/categories-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    final categoryMeals = DUMMY_MEALS
        .where((meals) => meals.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (_context, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
