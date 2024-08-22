import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();

  factory ApiService() => _instance;

  final Dio _dio = Dio();
  final String _baseUrl =
      'https://63f7-103-3-221-197.ngrok-free.app/api'; // Replace with your API base URL

  ApiService._internal() {
    _dio.options.baseUrl = _baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 5);
    _dio.options.receiveTimeout = const Duration(seconds: 3);

    // Add any global headers here
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    // Add interceptors for logging, error handling, etc.
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  // Helper method to set bearer token
  Options _getOptions(String? bearerToken) {
    return Options(
      headers:
          bearerToken != null ? {'Authorization': 'Bearer $bearerToken'} : null,
    );
  }

  // CRUD operations with optional bearer token

  Future<Response> getData(String endpoint, {String? bearerToken}) async {
    try {
      return await _dio.get(endpoint, options: _getOptions(bearerToken));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response> postData(String endpoint, dynamic data,
      {String? bearerToken}) async {
    try {
      return await _dio.post(endpoint,
          data: data, options: _getOptions(bearerToken));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response> updateData(String endpoint, dynamic data,
      {String? bearerToken}) async {
    try {
      return await _dio.put(endpoint,
          data: data, options: _getOptions(bearerToken));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response> deleteData(String endpoint, {String? bearerToken}) async {
    try {
      return await _dio.delete(endpoint, options: _getOptions(bearerToken));
    } catch (e) {
      throw _handleError(e);
    }
  }

  var logger = Logger();

  Exception _handleError(dynamic error) {
    if (error is DioException) {
      // Handle Dio specific errors
      logger.e('DioError: ${error.message}');

      return Exception('An error occurred: ${error.message}');
    } else {
      logger.e('Error: $error');
      return Exception('An unexpected error occurred');
    }
  }
}
