import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  CategoriesMealsScreen({
    @required this.categoryId,
    @required this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
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
