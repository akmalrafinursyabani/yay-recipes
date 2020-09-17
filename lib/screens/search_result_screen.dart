part of 'screens.dart';

class SearchResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                print("test");
              },
              child: Container(
                width: 32,
                height: 32,
                margin: EdgeInsets.only(left: 24, top: 48),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                      ),
                    ]),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.grey[600],
                  size: 16,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.all(24),
              child: ListView(
                children: [
                  SizedBox(
                    height: 64,
                  ),
                  Text(
                    "Showing result for :",
                    style: shared.blackTextFont.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 18,
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
                  SizedBox(
                    height: 24,
                  ),
                  FoodCard(
                    assets: "assets/chicken-rice.jpg",
                    name: "Chicken Rice Joss",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  FoodCard(
                    assets: "assets/spageti.jpg",
                    name: "Chicken Spagetti La Forteliano asdds",
                  ),
                  SizedBox(
                    height: 16,
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
