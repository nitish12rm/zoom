import 'package:dio/dio.dart';
import 'package:movie/repository/api/apiKey.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class API {
  Dio _dio = Dio();
  API() {
    _dio.options.baseUrl = "https://api.themoviedb.org";
    _dio.options.headers['content-type'] = 'application/json';
    _dio.options.headers['Authorization'] = "Bearer $apiAccessToken";
    _dio.options.queryParameters = <String, dynamic>{
      "language": "en-US",
      "page": 1
    };
    _dio.interceptors.add(PrettyDioLogger());
  }
  Dio get sendRequest => _dio;
}
