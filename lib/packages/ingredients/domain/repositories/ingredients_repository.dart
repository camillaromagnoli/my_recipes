import 'package:my_recipes/packages/ingredients/data/models/ingredient_model.dart';

abstract class IngredientsRepository {
  Future<List<IngredientModel>> getIngredients();
}
