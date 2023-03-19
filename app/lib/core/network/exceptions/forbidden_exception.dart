import 'package:dio/dio.dart';

class ForbiddenException extends DioError {
  ForbiddenException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  DioErrorType get type => DioErrorType.badResponse;

  @override
  String get message => 'Forbidden access to resource occurred';
}
