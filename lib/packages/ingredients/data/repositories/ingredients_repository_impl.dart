import 'package:dio/dio.dart';
import 'package:my_recipes/packages/ingredients/data/model/ingredient_model.dart';
import 'package:my_recipes/packages/ingredients/data/services/ingredients_repository.dart';
import 'package:my_recipes/packages/ingredients/data/services/ingredients_service.dart';

class IngredientsRepositoryImpl extends IngredientsRepository {
  IngredientsRepositoryImpl({
    required this.ingredientsService,
  });

  IngredientsService ingredientsService;

  @override
  Future<List<IngredientModel>> getIngredients() async {
    try {
      final Response response = await ingredientsService.getIngredients();

      return [IngredientModel.fromJson(response.data)];
    } catch (e) {
      rethrow;
    }
  }
}
