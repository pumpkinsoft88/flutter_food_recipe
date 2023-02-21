import 'package:flutter/material.dart';

import 'components.dart';

class RecipesGridView extends StatelessWidget {
  const RecipesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return const RecipeThubmnail();
      },
    );
  }
}
