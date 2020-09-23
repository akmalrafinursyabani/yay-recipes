part of '../screens.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRevealPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(
            24, MediaQuery.of(context).size.height / 6, 24, 0),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back,\nChef!",
                style: shared.blackTextFont.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 56,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                ),
              ),
              SizedBox(
                height: 36,
              ),
              TextField(
                obscureText: isRevealPassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    color: shared.disabledContent,
                    onPressed: () {
                      setState(() {
                        isRevealPassword = !isRevealPassword;
                      });
                    },
                  ),
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Forgot your password?",
                style: shared.subGreyTextFont.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 56,
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
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MainScreen(),
                    //   ),
                    // );
                    context.bloc<PageBloc>().add(GoToMainPage());
                  },
                  child: Text(
                    "Sign in",
                    style: shared.whiteTextFont,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "I want to create new account",
                    style: shared.whiteTextFont.copyWith(
                      color: shared.mainColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
