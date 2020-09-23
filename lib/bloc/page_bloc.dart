import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yay_recipes/bloc/blocs.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(OnSplashScreen());

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToSplashScreen) {
      yield OnSplashScreen();
    } else if (event is GoToMainPage) {
      yield OnMainScreen();
    } else if (event is GoToLoginScreen) {
      yield OnLoginScreen();
    }
  }
}
