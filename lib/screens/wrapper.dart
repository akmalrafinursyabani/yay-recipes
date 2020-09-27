part of 'screens.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
      builder: (context, state) {
        return (state is OnSplashScreen)
            ? SplashScreen()
            : (state is OnLoginScreen)
                ? LoginScreen()
                : (state is OnMainScreen)
                    ? MainScreen()
                    : (state is OnRegisterScreen)
                        ? RegisterScreen()
                        : (state is OnAccountConfirmationScreen)
                            ? AccountConfirmationScreen()
                            : (state is OnRecipeDetail)
                                ? RecipeDetail(idRecipe: state.id)
                                : Scaffold(
                                    appBar: AppBar(
                                      title: Text("Default Page Bloc"),
                                    ),
                                  );
      },
    );
  }
}
