import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  //// Navigation Method 1
  // final String categoryId;
  // final String categoryTitle;

  // CategoriesMealsScreen(
  //   this.categoryId,
  //   this.categoryTitle,
  // );
  ////

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          'The Recipes For The Selected Category',
        ),
      ),
    );
  }
}
