part of 'screens.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO : Logic Auth
    return BlocBuilder<PageBloc, PageState>(
      builder: (context, state) {
        // TODO: Page Bloc
        return (state is OnSplashScreen)
            ? SplashScreen()
            : (state is OnLoginScreen)
                ? LoginScreen()
                : (state is OnMainScreen)
                    ? MainScreen()
                    : Scaffold(
                        appBar: AppBar(
                          title: Text("Default Page Bloc"),
                        ),
                      );
      },
    );
  }
}
