import 'package:dio/dio.dart';

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  DioErrorType get type => DioErrorType.badResponse;

  @override
  String get message => 'Unknown error occurred, please try again later.';
}
