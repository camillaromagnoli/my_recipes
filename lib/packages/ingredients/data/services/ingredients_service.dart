import 'package:dio/dio.dart';
import 'package:my_recipes/core/adapters/network_adapter.dart';

abstract class IngredientsService {
  Future<Response> getIngredients();
}

class IngredientsServiceImpl extends IngredientsService {
  IngredientsServiceImpl({
    required NetworkAdapter networkAdapter,
  }) : _networkAdapter = networkAdapter;

  final NetworkAdapter _networkAdapter;

  @override
  Future<Response> getIngredients() async {
    return _networkAdapter.get(url: '');
  }
}
