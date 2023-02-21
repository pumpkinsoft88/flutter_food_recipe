import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';

class RecipesScreen extends StatelessWidget {
  RecipesScreen({super.key});

  final mockFooderlichService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Object>(
        future: mockFooderlichService.getRecipes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data ?? [];
            return RecipesGridView(recipes: recipes);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
