import 'package:my_recipes/packages/ingredients/data/model/ingredient_model.dart';

abstract class IngredientsRepository {
  Future<List<IngredientModel>> getIngredients();
}
