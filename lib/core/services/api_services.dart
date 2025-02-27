import 'package:dio/dio.dart';

class ApiServices {
  static const String baseUrl = 'https://api.unsplash.com/';
  final Dio dio;

  ApiServices({required this.dio});

  Future<List<dynamic>> getRequest(String endPoint) async {
    final response = await dio.get('$baseUrl$endPoint');
      return response.data;
  }
  Future<Map<String, dynamic>> getRequestAsMap(String endPoint) async {
    final response = await dio.get('$baseUrl$endPoint');
      return response.data;
  }
}
