import 'package:equatable/equatable.dart';
import 'package:my_recipes/packages/ingredients/domain/entities/ingedient_details_entity.dart';

class IngredientEntity extends Equatable {
  const IngredientEntity({
    required this.id,
    required this.name,
    required this.category,
    required this.ingredientDetails,
    required this.recipes,
  });

  final int id;
  final String name;
  final String category;
  final List<IngredientDetailsEntity> ingredientDetails;
  final List<int> recipes;

  @override
  List<Object?> get props => [
        id,
        name,
        category,
        ingredientDetails,
        recipes,
      ];
}
