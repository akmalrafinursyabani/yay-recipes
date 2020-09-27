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
                    Flushbar(
                      duration: Duration(seconds: 3),
                      backgroundColor: shared.mainColor,
                      flushbarPosition: FlushbarPosition.TOP,
                      message: "Search feature is coming soon! :)",
                    )..show(context);
                    print("Done");
                    // FocusScope.of(context).unfocus();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => SearchResultScreen(),
                    //   ),
                    // );
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
            "Check this out!",
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
          margin: EdgeInsets.only(right: 24),
          child: BlocBuilder<FoodRecipesBloc, FoodRecipesState>(
            builder: (context, state) {
              if (state is FoodRecipeLoaded) {
                List<FoodRecipeModel> foodRecipes =
                    state.foodRecipes.sublist(0, 10);

                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodRecipes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print(foodRecipes[index].id.toString());
                        context.bloc<PageBloc>().add(
                              GoToRecipeDetail(id: foodRecipes[index].id),
                            );
                      },
                      child: RecipeCard(
                        image: foodRecipes[index].image,
                        title: foodRecipes[index].title,
                        readyInMinutes: foodRecipes[index].readyInMinutes,
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(shared.mainColor),
                  ),
                );
              }
            },
          ),
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
          // color: Colors.red,
          height: 172,
          width: 100,
          padding: EdgeInsets.only(right: 24),
          child: BlocBuilder<FoodRecipesBloc, FoodRecipesState>(
            builder: (context, state) {
              if (state is FoodRecipeLoaded) {
                List<FoodRecipeModel> foodRecipes =
                    state.foodRecipes.sublist(11, 20);

                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodRecipes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print(foodRecipes[index].id.toString());
                        context.bloc<PageBloc>().add(
                              GoToRecipeDetail(id: foodRecipes[index].id),
                            );
                      },
                      child: RecipeCard(
                        image: foodRecipes[index].image,
                        title: foodRecipes[index].title,
                        readyInMinutes: foodRecipes[index].readyInMinutes,
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(shared.mainColor),
                  ),
                );
              }
            },
          ),
        ),

        SizedBox(
          height: 24,
        ),
        Container(
          margin: EdgeInsets.only(left: 24),
          child: Text(
            "You might love this. Scroll it, it might\nsurprise you.",
            style: shared.blackTextFont.copyWith(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        BlocBuilder<FoodRecipesBloc, FoodRecipesState>(
          builder: (context, state) {
            if (state is FoodRecipeLoaded) {
              List<FoodRecipeModel> foodRecipes =
                  state.foodRecipes.sublist(20, 30);
              return Container(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                  itemCount: foodRecipes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print(foodRecipes[index].id.toString());
                        context.bloc<PageBloc>().add(
                              GoToRecipeDetail(id: foodRecipes[index].id),
                            );
                      },
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 24, right: 24, bottom: 12),
                        width: double.infinity,
                        child: FoodCard(
                          assets: foodRecipes[index].image,
                          name: foodRecipes[index].title,
                          time: foodRecipes[index].readyInMinutes.toString(),
                        ),
                      ),
                    );
                  },
                ),
              );
            } else {
              return Container();
            }
          },
        ),

        // Note : Bottom Padding
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
