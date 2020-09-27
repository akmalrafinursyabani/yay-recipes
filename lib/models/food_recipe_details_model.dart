part of 'models.dart';

class FoodRecipeDetailModel extends Equatable {
  final int id;
  final String title;
  final int readyInMinutes;
  final int servings;
  final String image;
  final String summary;
  final String instructions;
  final int score;

  FoodRecipeDetailModel({
    this.id,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.image,
    this.summary,
    this.instructions,
    this.score,
  });

  factory FoodRecipeDetailModel.fromJson(Map<String, dynamic> json) {
    return FoodRecipeDetailModel(
      id: json['id'],
      title: json['title'],
      readyInMinutes: json['readyInMinutes'],
      servings: json['servings'],
      image: json['image'],
      summary: json['summary'],
      instructions: json['instructions'],
      score: json['spoonacularScore'].toInt(),
    );
  }

  @override
  // TODO: implement props
  List<Object> get props => [
        id,
        title,
        readyInMinutes,
        servings,
        image,
        summary,
        instructions,
        score,
      ];
}
