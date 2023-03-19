import 'package:dio/dio.dart';

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  DioErrorType get type => DioErrorType.badResponse;
  @override
  String get message => 'The requested returned an invalid status code of 404.';
}
