import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_recipes/core/adapters/network_adapter.dart';
import 'package:my_recipes/packages/ingredients/domain/services/ingredients_service.dart';

@Injectable(as: IngredientsService)
class IngredientsServiceImpl extends IngredientsService {
  IngredientsServiceImpl({
    required NetworkAdapter networkAdapter,
  }) : _networkAdapter = networkAdapter;

  final NetworkAdapter _networkAdapter;

  @override
  Future<Response> getIngredients() async {
    final Response response = await _networkAdapter.get(url: '');

    return response;
  }
}
