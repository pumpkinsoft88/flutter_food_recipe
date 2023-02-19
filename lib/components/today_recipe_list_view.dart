import 'package:flutter/material.dart';
// ignore: unused_import
import '../components/components.dart';
// ignore: unused_import
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({super.key, required this.recipes});
  final List<ExploreRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Recipes of the Day! 🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 400,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _buildCard(recipes[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 16,
                );
              },
              itemCount: recipes.length),
        )
      ],
    );
  }
}

Widget _buildCard(ExploreRecipe exploreRecipe) {
  if (exploreRecipe.cardType == RecipeCardType.card1) {
    return Card1(recipe: exploreRecipe);
  } else if (exploreRecipe.cardType == RecipeCardType.card2) {
    return Card2(recipe: exploreRecipe);
  } else if (exploreRecipe.cardType == RecipeCardType.card3) {
    return Card3(recipe: exploreRecipe);
  } else {
    throw Exception('this card does not exist');
  }
}
