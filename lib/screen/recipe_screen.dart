import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
// ignore: unused_import
import '../components/components.dart';

class RecipesScreen extends StatelessWidget {
  RecipesScreen({super.key});

  final mockFooderlichService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Object>(
        future: mockFooderlichService.getRecipes(),
        builder: (context, snapshot) {
          // if (snapshot.connectionState == ConnectionState.done) {
          return const RecipesGridView();
          // } else {
          // return const Center(child: CircularProgressIndicator());
          // }
        });
  }
}
