import 'package:app/core/model/base_model.dart';
import 'package:app/core/model/i_base_model.dart';
import 'package:dio/dio.dart';

class NetworkManager {
  final String _baseUrl = "";

  Dio get service => _dio;
  late final Dio _dio;

  NetworkManager._() {
    _dio = Dio(_myBaseOptions());
  }

  Future<T> request<T extends IBaseModel>(String path, dynamic data, T responseModel) async {
    try {
      final responseData = await _dio.request(path, data: data);
      switch (responseData.data) {
        case Map:
          return responseModel.fromJson(responseData.data) as T;
        case List:
          return responseModel.fromJsonList(responseData.data) as T;

        default:
          throw Exception("Invalid response type");
      }
    } on DioError {
      rethrow;
    }
  }

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

  Map<String, dynamic>? get _headers {}
}
