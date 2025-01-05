import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkAdapter {
  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
}

@Injectable(as: NetworkAdapter)
class NetworkAdapterImpl implements NetworkAdapter {
  final Dio _dio;

  NetworkAdapterImpl(this._dio);

  @override
  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      print('teste1');

      final Response result = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
      );

      print('teste2');
      print('teste${result.data}');

      return result;
    } catch (e) {
      print('teste3');

      print(e);
      rethrow;
    }
  }
}
