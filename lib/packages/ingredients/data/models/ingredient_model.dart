import 'package:my_recipes/packages/ingredients/data/models/ingredient_detail_model.dart';
import 'package:my_recipes/packages/ingredients/domain/entities/ingredient_entity.dart';

class IngredientModel extends IngredientEntity {
  const IngredientModel({
    required super.id,
    required super.name,
    required super.category,
    required super.ingredientDetails,
    required super.recipes,
  });

  factory IngredientModel.fromJson(Map<String, dynamic> json) {
    return IngredientModel(
      id: json['id'] as int,
      name: json['name'] as String,
      category: json['category'] as String,
      ingredientDetails: List<IngredientDetailModel>.from(
        (json['ingredientDetails'] as List<int>).map<IngredientDetailModel>(
          (x) => IngredientDetailModel.fromJson(x as Map<String, dynamic>),
        ),
      ),
      recipes: List<int>.from(
        (json['recipes'] as List<int>),
      ),
    );
  }
}
