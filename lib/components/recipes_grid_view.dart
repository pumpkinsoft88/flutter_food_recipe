import 'package:flutter/material.dart';

import 'components.dart';

class RecipesGridView extends StatelessWidget {
  const RecipesGridView({super.key});

  static const _gridPadding = 24.0;

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
        return const RecipeThubmnail();
      },
    );
  }
}
