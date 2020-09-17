part of 'screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's cook\nsomething today!",
                style: shared.blackTextFont.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                height: 72,
                child: TextField(
                  onEditingComplete: () {
                    print("Done");
                    FocusScope.of(context).unfocus();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchResultScreen(),
                      ),
                    );
                  },
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFEBEAEA),
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      size: 24,
                      color: Color(0xFF9A9A9A),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 24),
          child: Text(
            "Popular this week",
            style: shared.blackTextFont.copyWith(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          height: 172,
          width: 100,
          child: RecipeCard(),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          margin: EdgeInsets.only(left: 24),
          child: Text(
            "Easy to make!",
            style: shared.blackTextFont.copyWith(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          height: 172,
          width: 100,
          child: RecipeCard(),
        ),

        SizedBox(
          height: 24,
        ),
        Container(
          margin: EdgeInsets.only(left: 24),
          child: Text(
            "You might love this",
            style: shared.blackTextFont.copyWith(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          margin: EdgeInsets.only(left: 24, right: 24),
          width: double.infinity,
          child: FoodCard(
            assets: "assets/chicken-onion.jpg",
            name: "Chicken with Bicc Onion",
          ),
        ),

        SizedBox(
          height: 16,
        ),

        // TODO : Erase
        Container(
          margin: EdgeInsets.only(left: 24, right: 24),
          width: double.infinity,
          child: FoodCard(
            assets: "assets/korean.jpg",
            name: "Hot Spicy Rice",
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 24, right: 24),
          width: double.infinity,
          child: FoodCard(
            assets: "assets/chicken-rice.jpg",
            name: "Pecel Ayam Uncle Muthu",
          ),
        ),
        SizedBox(
          height: 16,
        ),
        // TODO : End Erase

        // Note : Bottom Padding
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
