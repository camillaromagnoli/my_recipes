import 'package:injectable/injectable.dart';
import 'package:my_recipes/packages/ingredients/domain/entities/ingredient_entity.dart';
import 'package:my_recipes/packages/ingredients/domain/repositories/ingredients_repository.dart';

abstract class GetIngredientsUseCase {
  Future<List<IngredientEntity>> execute();
}

@Injectable(as: GetIngredientsUseCase)
class GetSubMenusUseCaseImpl extends GetIngredientsUseCase {
  GetSubMenusUseCaseImpl(this._repository);

  final IngredientsRepository _repository;

  @override
  Future<List<IngredientEntity>> execute() async {
    return await _repository.getIngredients();
  }
}
