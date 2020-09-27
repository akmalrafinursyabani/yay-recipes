part of '../screens.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isHidePassword = true;
  bool isChecked = false;
  bool isSigningUp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(24, 48, 24, 24),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: shared.blackTextFont.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // SizedBox(
                //   height: 16,
                // ),
                // GestureDetector(
                //   onTap: () {
                //     // TODO Profile Picture
                //     print("Profile Picture Tapped");
                //   },
                //   child: Container(
                //     // color: Colors.red,
                //     height: 100,
                //     width: 120,
                //     child: Stack(
                //       children: [
                //         Align(
                //           alignment: Alignment.topCenter,
                //           child: Container(
                //             width: 86,
                //             height: 86,
                //             decoration: BoxDecoration(
                //               //TODO : Profile Picture Update
                //               image: DecorationImage(
                //                 image: AssetImage("assets/user_default.png"),
                //               ),
                //             ),
                //           ),
                //         ),
                //         //TODO : Icon add or delete
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 56,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: isHidePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            isHidePassword = !isHidePassword;
                          });
                        }),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                CheckboxListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "I agree with Terms & Conditions",
                    style: shared.blackTextFont,
                    textAlign: TextAlign.left,
                  ),
                  activeColor: shared.mainColor,
                  checkColor: Colors.white,
                  secondary: null,
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                      print(isChecked.toString());
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                SizedBox(
                  height: 36,
                ),
                Container(
                  width: double.infinity,
                  height: 46,
                  child: (isSigningUp == true)
                      ? SpinKitFadingCircle(
                          color: shared.mainColor,
                          size: 36,
                        )
                      : RaisedButton(
                          elevation: 0,
                          color: shared.mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          onPressed: () async {
                            print("Sign Up");

                            if (nameController.text.trim() == "" &&
                                emailController.text.trim() == "" &&
                                passwordController.text.trim() == "") {
                              Flushbar(
                                duration: Duration(seconds: 3),
                                flushbarPosition: FlushbarPosition.BOTTOM,
                                backgroundColor: Colors.red[600],
                                message: "All fields are required!",
                              )..show(context);
                            } else if (!EmailValidator.validate(
                                emailController.text)) {
                              Flushbar(
                                duration: Duration(seconds: 3),
                                flushbarPosition: FlushbarPosition.BOTTOM,
                                backgroundColor: Colors.red[600],
                                message:
                                    "Email should contain @. For Example : recipes@recipes.com",
                              )..show(context);
                            } else if (passwordController.text.length < 6) {
                              Flushbar(
                                duration: Duration(seconds: 3),
                                flushbarPosition: FlushbarPosition.BOTTOM,
                                backgroundColor: Colors.red[600],
                                message:
                                    "Minimum password length is more than 6 characters",
                              )..show(context);
                            } else if (isChecked == false) {
                              Flushbar(
                                duration: Duration(seconds: 3),
                                flushbarPosition: FlushbarPosition.BOTTOM,
                                backgroundColor: Colors.red[600],
                                message:
                                    "You must agree with our Terms and Conditions",
                              )..show(context);
                            } else {
                              setState(() {
                                isSigningUp = true;
                              });

                              SignInSignUpResult result =
                                  await AuthServices.signUp(
                                nameController.text,
                                emailController.text,
                                passwordController.text,
                              );

                              if (result.user == null) {
                                Flushbar(
                                  duration: Duration(seconds: 3),
                                  flushbarPosition: FlushbarPosition.TOP,
                                  backgroundColor: Colors.red,
                                  message: result.message,
                                );
                              }
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToAccountConfirmationScreen());
                            }
                          },
                          child:
                              Text("Sign me up!", style: shared.whiteTextFont),
                        ),
                ),
                SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    context.bloc<PageBloc>().add(GoToLoginScreen());
                  },
                  child: Text(
                    "I already have an account",
                    style: shared.blackTextFont.copyWith(
                      color: shared.mainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
