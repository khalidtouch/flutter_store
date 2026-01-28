import 'package:dio/dio.dart';

class ApiClient {

  final Dio dio;

  ApiClient._internal(this.dio);

  static final ApiClient _instance =
      ApiClient._internal(Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/')));

  factory ApiClient() => _instance;

  Future<Response> get(String path, { Map<String, dynamic>? params }) async {
    try {

      return await dio.get(path, queryParameters: params);

    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(String path, { dynamic data }) async {
    try {

      return await dio.post(path, data: data);

    } catch (e) {
      rethrow;
    }
  }

}