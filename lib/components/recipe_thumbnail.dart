import 'package:flutter/material.dart';

import '../models/simple_recipe.dart';

class RecipeThumbnail extends StatelessWidget {
  const RecipeThumbnail({super.key, required this.recipe});

  final SimpleRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                recipe.dishImage,
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(recipe.title, style: Theme.of(context).textTheme.bodyText1),
        Text('${recipe.duration} mins',
            style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
