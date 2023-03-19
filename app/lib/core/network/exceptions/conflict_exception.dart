import 'package:dio/dio.dart';

class ConflictException extends DioError {
  ConflictException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  DioErrorType get type => DioErrorType.badResponse;

  @override
  String get message => 'Conflict occurred';
}
