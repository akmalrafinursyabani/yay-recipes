part of '../screens.dart';

class AccountConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/checklist.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "You're good to go!",
                style: shared.blackTextFont.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Your account has successfully registered.\nWelcome aboard, Chef!",
                style: shared.blackTextFont.copyWith(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 64,
              ),
              Container(
                width: double.infinity,
                height: 46,
                child: RaisedButton(
                  elevation: 0,
                  color: shared.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("Let's start!", style: shared.whiteTextFont),
                  onPressed: () {
                    context.bloc<PageBloc>().add(GoToMainPage());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
