
import 'package:meals_app/screens/tabs_screen.dart';

import '../screens/categories_screen.dart';
import '../screens/category_meals_screen.dart';
import '../screens/meal_detail_screen.dart';


final routes = {
  TabsScreen.routeName:             (_) => TabsScreen(),
  CategoriesScreen.routeName:       (_) => CategoriesScreen(),
  CategoriesMealsScreen.routeName:  (_) => CategoriesMealsScreen(),
  MealDetailScreen.routeName:       (_) => MealDetailScreen(),
};
