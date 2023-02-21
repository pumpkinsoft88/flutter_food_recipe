import 'package:flutter/material.dart';

import 'components.dart';
// ignore: unused_import
import '../models/models.dart';

class RecipesGridView extends StatelessWidget {
  const RecipesGridView({super.key, required this.recipes});

  static const _gridPadding = 24.0;
  final List<SimpleRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(_gridPadding),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: _gridPadding,
        crossAxisSpacing: _gridPadding,
      ),
      itemBuilder: (BuildContext context, int index) {
        return RecipeThubmnail(
          recipe: recipes[index],
        );
      },
    );
  }
}
