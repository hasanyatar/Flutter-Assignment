import 'package:dio/dio.dart';

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  DioErrorType get type => DioErrorType.badResponse;
  @override
  String get message => 'Invalid request';
}
