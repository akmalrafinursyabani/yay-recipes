part of 'services.dart';

class FoodRecipesServices {
  static Future<List<FoodRecipeModel>> getFoodRecipes(int number,
      {http.Client client}) async {
    String url =
        "https://api.spoonacular.com/recipes/random?limitLicense=true&number=$number&apiKey=${shared.apiKey}";

    client ??= http.Client();

    var response = await http.get(url);
    var data = jsonDecode(response.body);

    List results = data['recipes'];

    return results.map((e) => FoodRecipeModel.fromJson(e)).toList();
  }

  static Future<FoodRecipeDetailModel> getFoodRecipeDetails(int idRecipes,
      {http.Client client}) async {
    String url =
        "https://api.spoonacular.com/recipes/$idRecipes/information?includeNutrition=false&apiKey=${shared.apiKey}";

    client ??= http.Client();

    var response = await http.get(url);
    var data = jsonDecode(response.body);

    // FoodRecipeDetailModel detailModel = FoodRecipeDetailModel.fromJson(data);

    return FoodRecipeDetailModel.fromJson(data);
  }
}
