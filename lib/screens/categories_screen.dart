import 'package:flutter/material.dart';

import '../widgets/category_item.dart';

import '../utils/constants/strings.dart' as Strings;
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map((cData) => CategoryItem(cData.id, cData.title, cData.color))
          .toList(),
    );
  }
}
