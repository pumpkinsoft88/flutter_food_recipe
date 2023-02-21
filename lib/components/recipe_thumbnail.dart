import 'package:flutter/material.dart';

class RecipeThubmnail extends StatelessWidget {
  const RecipeThubmnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/food_pics/food_banana.jpg',
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text('Smoke salmon', style: Theme.of(context).textTheme.bodyText1),
        Text('39 mins', style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
