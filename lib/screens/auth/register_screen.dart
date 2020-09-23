part of '../screens.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isRevealPassword = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: shared.blackTextFont.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    // TODO Profile Picture
                    print("Profile Picture Tapped");
                  },
                  child: Container(
                    // color: Colors.red,
                    height: 100,
                    width: 120,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 86,
                            height: 86,
                            decoration: BoxDecoration(
                              //TODO : Profile Picture Update
                              image: DecorationImage(
                                image: AssetImage("assets/user_default.png"),
                              ),
                            ),
                          ),
                        ),
                        //TODO : Icon add or delete
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email Address",
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextField(
                  obscureText: isRevealPassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            isRevealPassword = !isRevealPassword;
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
                          builder: (context) => SuccessRegisterScreen(),
                        ),
                      );
                    },
                    child: Text("Sign me up!", style: shared.whiteTextFont),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
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
