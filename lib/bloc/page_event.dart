part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GoToSplashScreen extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToRegisterScreen extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginScreen extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToAccountConfirmationScreen extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToRecipeDetail extends PageEvent {
  final int id;
  final FoodRecipeDetailModel foodRecipeDetailModel;

  GoToRecipeDetail({this.id, this.foodRecipeDetailModel});

  @override
  List<Object> get props => [id, foodRecipeDetailModel];
}
