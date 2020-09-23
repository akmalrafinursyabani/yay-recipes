part of 'food_recipes_bloc.dart';

abstract class FoodRecipesState extends Equatable {
  const FoodRecipesState();

  @override
  List<Object> get props => [];
}

class FoodRecipesInitial extends FoodRecipesState {}

class FoodRecipeLoaded extends FoodRecipesState {
  final List<FoodRecipeModel> foodRecipes;

  FoodRecipeLoaded({this.foodRecipes});

  @override
  List<Object> get props => [foodRecipes];
}
