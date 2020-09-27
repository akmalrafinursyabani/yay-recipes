import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yay_recipes/models/models.dart';
import 'package:yay_recipes/services/services.dart';

part 'food_recipes_event.dart';
part 'food_recipes_state.dart';

class FoodRecipesBloc extends Bloc<FoodRecipesEvent, FoodRecipesState> {
  FoodRecipesBloc() : super(FoodRecipesInitial());

  @override
  Stream<FoodRecipesState> mapEventToState(
    FoodRecipesEvent event,
  ) async* {
    if (event is HomePageEvent) {
      print("home");
      yield FoodRecipesInitial();
    } else if (event is FetchFoodRecipes) {
      List<FoodRecipeModel> foodRecipes =
          await FoodRecipesServices.getFoodRecipes(30);

      yield FoodRecipeLoaded(foodRecipes: foodRecipes);
    }
  }
}
