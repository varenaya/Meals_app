import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text(
          'You have no favorites yet - start adding some!!',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            favoriteMeals[index].id,
            favoriteMeals[index].title,
            favoriteMeals[index].imageUrl,
            favoriteMeals[index].duration,
            favoriteMeals[index].complexity,
            favoriteMeals[index].affordability,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
