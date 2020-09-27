part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();

  @override
  List<Object> get props => [];
}

class PageInitial extends PageState {
  @override
  List<Object> get props => [];
}

class OnSplashScreen extends PageState {
  @override
  List<Object> get props => [];
}

class OnRegisterScreen extends PageState {
  @override
  List<Object> get props => [];
}

class OnLoginScreen extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainScreen extends PageState {
  @override
  List<Object> get props => [];
}

class OnAccountConfirmationScreen extends PageState {
  @override
  List<Object> get props => [];
}

class OnRecipeDetail extends PageState {
  final int id;
  final FoodRecipeDetailModel foodRecipeDetailModel;

  OnRecipeDetail({this.id, this.foodRecipeDetailModel});

  @override
  List<Object> get props => [id, foodRecipeDetailModel];
}
