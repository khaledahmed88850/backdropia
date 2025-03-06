import 'package:backdropia/core/error/exceptions.dart';
import 'package:dio/dio.dart';

class ApiServices {
  static const String baseUrl = 'https://api.unsplash.com/';
  final Dio dio;

  ApiServices({required this.dio});

  Future<List<dynamic>> getRequest(String endPoint) async {
    try {
      final response = await dio.get('$baseUrl$endPoint');
      return response.data;
    } on Exception catch (e) {
      if (e is DioException) {
        throw DioException(requestOptions: e.requestOptions);
      } else {
        throw Customexception(message: e.toString());
      }
    }
  }

  Future<Map<String, dynamic>> getRequestAsMap(String endPoint) async {
    try {
      final response = await dio.get('$baseUrl$endPoint');
      return response.data;
    } on Exception catch (e) {
      if (e is DioException) {
        throw DioException(requestOptions: e.requestOptions);
      } else {
        throw Customexception(message: e.toString());
      }
    }
  }
}
