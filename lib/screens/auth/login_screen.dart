part of '../screens.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isHidePassword = true;
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSigningIn = false;

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
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email Address",
                ),
                onChanged: (value) {
                  isEmailValid = EmailValidator.validate(value);
                },
              ),
              SizedBox(
                height: 36,
              ),
              TextField(
                controller: passwordController,
                obscureText: isHidePassword,
                onChanged: (value) {
                  isPasswordValid = value.length >= 5;
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    color: shared.disabledContent,
                    onPressed: () {
                      setState(() {
                        isHidePassword = !isHidePassword;
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
                  onPressed: (isEmailValid && isPasswordValid)
                      ? () async {
                          setState(() {
                            isSigningIn = true;
                          });

                          SignInSignUpResult result = await AuthServices.signIn(
                            emailController.text,
                            passwordController.text,
                          );

                          if (result.user == null) {
                            Flushbar(
                              duration: Duration(seconds: 5),
                              flushbarPosition: FlushbarPosition.TOP,
                              backgroundColor: Colors.red[600],
                              message:
                                  "Credentials does not match. Please check again",
                            );
                          } else {
                            context.bloc<PageBloc>().add(GoToMainPage());
                          }
                        }
                      : null,
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
                    context.bloc<PageBloc>().add(GoToRegisterScreen());
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
