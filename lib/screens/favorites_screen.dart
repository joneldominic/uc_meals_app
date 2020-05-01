import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';


class FavoritesScreen extends StatefulWidget {
  List<Meal> _favoriteMeals;
  FavoritesScreen(this._favoriteMeals);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget._favoriteMeals.isEmpty)
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );

    return ListView.builder(
        itemBuilder: (_context, index) {
          return MealItem(
            id: widget._favoriteMeals[index].id,
            title: widget._favoriteMeals[index].title,
            imageUrl: widget._favoriteMeals[index].imageUrl,
            duration: widget._favoriteMeals[index].duration,
            complexity: widget._favoriteMeals[index].complexity,
            affordability: widget._favoriteMeals[index].affordability,
            removeItem: null,
          );
        },
        itemCount: widget._favoriteMeals.length,
      );
  }
}
