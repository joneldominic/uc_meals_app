import '../screens/categories_screen.dart';
import '../screens/category_meals_screen.dart';
import '../screens/meal_detail_screen.dart';
import '../screens/filters_screen.dart';
import '../screens/tabs_screen.dart';


final routes = {
  TabsScreen.routeName:             (_) => TabsScreen(),
  CategoriesScreen.routeName:       (_) => CategoriesScreen(),
  CategoriesMealsScreen.routeName:  (_) => CategoriesMealsScreen(),
  MealDetailScreen.routeName:       (_) => MealDetailScreen(),
  FiltersScreen.routeName:          (_) => FiltersScreen(),
};
