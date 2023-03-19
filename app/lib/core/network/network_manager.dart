import 'package:app/config/env.dart';
import 'package:app/core/network/interceptors/error_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkManager {
  final String _baseUrl = dotenv.env['BASE_URL'] ?? "";

  Dio get service => _dio;
  late final Dio _dio;

  NetworkManager() {
    _dio = Dio(_myBaseOptions());
    _dio.interceptors.add(_prettyDioLogger);
    _dio.interceptors.add(ErrorInterceptor());
  }

  static const int _maxLineWidth = 90;
  final PrettyDioLogger _prettyDioLogger = PrettyDioLogger(
      requestHeader: true,
      requestBody: false,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: _maxLineWidth);

  Future<Response> post(String path, dynamic data) async {
    try {
      return await _dio.post(path, data: data);
    } on DioError {
      rethrow;
    }
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      return await _dio.put(path, data: data);
    } on DioError {
      rethrow;
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await _dio.delete(path);
    } on DioError {
      rethrow;
    }
  }

  Future<Response> get(String path) async {
    try {
      return await _dio.get(path);
    } on DioError {
      rethrow;
    }
  }

// * Configure Dio to use base url and headers.

  BaseOptions _myBaseOptions() => BaseOptions(
        baseUrl: _baseUrl,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        headers: _headers,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),
      );

  Map<String, dynamic>? get _headers {
    return {
      'X-RapidAPI-Key': dotenv.env['API_KEY'],
      'X-RapidAPI-Host': dotenv.env['API_HOST'],
    };
  }
}
