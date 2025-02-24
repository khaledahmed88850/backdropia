import 'package:dio/dio.dart';

class ApiServices {
  static const String baseUrl = 'https://api.unsplash.com/';
  final Dio dio;

  ApiServices({required this.dio});

  Future<List<dynamic>> getRequest(String endPoint) async {
    try {
      final response = await dio.get(baseUrl + endPoint);
      return response.data;
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }
}
