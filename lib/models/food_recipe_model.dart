part of 'models.dart';

class FoodRecipeModel extends Equatable {
  final int id;
  final String title;
  final int readyInMinutes;
  final int servings;
  final String image;
  final String summary;
  final String instructions;

  FoodRecipeModel({
    this.id,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.image,
    this.summary,
    this.instructions,
  });

  factory FoodRecipeModel.fromJson(Map<String, dynamic> json) {
    return FoodRecipeModel(
      id: json['id'],
      title: json['title'],
      readyInMinutes: json['readyInMinutes'],
      servings: json['servings'],
      image: json['image'],
      summary: json['summary'],
      instructions: json['instructions'],
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
      ];
}
