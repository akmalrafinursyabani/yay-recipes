part of '../screens.dart';

class SuccessRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 36),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/checklist.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "You're good to go!",
                style: shared.blackTextFont.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Your account has successfully registered. Welcome aboard, Chef!",
                style: shared.greyTextFont,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 56,
              ),
              Container(
                height: 48,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ),
                    );
                  },
                  elevation: 0,
                  color: shared.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "Let's start!",
                    style: shared.whiteTextFont,
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
