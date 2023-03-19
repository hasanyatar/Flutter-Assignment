import 'package:dio/dio.dart';

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  DioErrorType get type => DioErrorType.badResponse;

  @override
  String get message => 'Unauthorized access to resource occurred. Please login again.';
}
