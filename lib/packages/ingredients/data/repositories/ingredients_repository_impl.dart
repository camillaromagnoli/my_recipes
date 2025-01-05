import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_recipes/core/exceptions/failure.dart';
import 'package:my_recipes/packages/ingredients/data/models/ingredient_model.dart';
import 'package:my_recipes/packages/ingredients/domain/repositories/ingredients_repository.dart';
import 'package:my_recipes/packages/ingredients/domain/services/ingredients_service.dart';

@Injectable(as: IngredientsRepository)
class IngredientsRepositoryImpl extends IngredientsRepository {
  IngredientsRepositoryImpl({
    required this.ingredientsService,
  });

  IngredientsService ingredientsService;

  @override
  Future<List<IngredientModel>> getIngredients() async {
    try {
      final Response response = await ingredientsService.getIngredients();

      final List<IngredientModel> ingredientModelList =
          (response.data as List<Map<String, dynamic>>)
              .map((data) => IngredientModel.fromJson(data))
              .toList();

      return ingredientModelList;
    } on DioException catch (e) {
      throw handleDioError(e);
    } catch (e) {
      throw ServerException();
    }
  }
}
