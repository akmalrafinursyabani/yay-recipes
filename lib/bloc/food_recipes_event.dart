part of 'food_recipes_bloc.dart';

abstract class FoodRecipesEvent extends Equatable {
  const FoodRecipesEvent();

  @override
  List<Object> get props => [];
}

class HomePageEvent extends FoodRecipesEvent {}

class FetchFoodRecipes extends FoodRecipesEvent {
  @override
  List<Object> get props => [];
}
