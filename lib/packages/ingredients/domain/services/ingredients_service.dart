import 'package:dio/dio.dart';

abstract class IngredientsService {
  Future<Response> getIngredients();
}
