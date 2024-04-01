import 'package:dio/dio.dart';

class ApiService {
  ApiService();
  // base url
  static const String _baseUrl = 'https://markaz-el-amal.onrender.com';
  // dio
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: _baseUrl,
    receiveDataWhenStatusError: true,
  ));

  static Future<Map<String, dynamic>> get(
      {String endPoint = '',
      Map<String, dynamic>? queryParm,
      String? token,
      String? contentType}) async {
    Response response;
    response = await _dio.get(endPoint,
        queryParameters: queryParm,
        options: Options(contentType: contentType, headers: {
          'Accept': 'application/json',
          if (token != null) 'Authorization': 'Bearer $token',
        }));
    return response.data;
  }

  static Future<Map<String, dynamic>> post({
    String endPoint = '',
    Map<String, dynamic>? data,
    String? token,
    String? contentType,
  }) async {
    Response response;
    response = await _dio.post(
      endPoint,
      data: data,
      options: Options(
        contentType: contentType,
        headers: {
          'Accept': 'application/json',
          if (token != null) 'Authorization': 'Bearer $token',
        },
      ),
    );
    return response.data;
  }
}
