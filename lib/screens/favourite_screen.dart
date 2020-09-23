part of 'screens.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/favourite.png"),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Favourite Screen is\nwork in progress! :) ",
            style: shared.blackTextFont,
          ),
        ],
      ),
    );
  }
}
