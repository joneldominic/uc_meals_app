import 'package:flutter/material.dart';

import 'package:meals_app/widgets/category_item.dart';

import 'package:meals_app/utils/constants/Strings.dart';

import 'package:meals_app/utils/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appTitle),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((cData) => CategoryItem(cData.title, cData.color))
            .toList(),
      ),
    );
  }
}
