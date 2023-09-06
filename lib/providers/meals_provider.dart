import 'package:MealMapper/data/dummy_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final MealMapperProvider = Provider((ref) {
  return dummyMealMapper;
});
