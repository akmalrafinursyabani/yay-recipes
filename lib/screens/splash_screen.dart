part of 'screens.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                color: shared.loadingBackground,
                image: DecorationImage(
                  image: AssetImage("assets/splash_screen.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              padding: EdgeInsets.all(24),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello Chef!",
                    style: shared.blackTextFont.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Glad you use our app to find a tons of marvelous food recipes. So, what are we waiting for? Let’s get into it right now!",
                    style: shared.subGreyTextFont,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 76,
                  ),
                  Container(
                    height: 46,
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 0,
                      color: shared.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign me up!",
                        style: shared.whiteTextFont,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 46,
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(color: shared.mainColor),
                      ),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => LoginScreen(),
                        //   ),
                        // );
                        context.bloc<PageBloc>().add(GoToLoginScreen());
                      },
                      child: Text(
                        "I already have an account",
                        style: shared.whiteTextFont.copyWith(
                          color: shared.mainColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
