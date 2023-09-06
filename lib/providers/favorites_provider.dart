import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:MealMapper/models/meal.dart';

class FavoriteMealMapperNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealMapperNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealMapperProvider =
    StateNotifierProvider<FavoriteMealMapperNotifier, List<Meal>>((ref) {
  return FavoriteMealMapperNotifier();
});
