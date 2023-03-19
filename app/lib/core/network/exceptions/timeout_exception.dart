import 'package:dio/dio.dart';

class TimeoutException extends DioError {
  TimeoutException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  DioErrorType get type => DioErrorType.receiveTimeout;

  @override
  String get message => 'The connection has timed out, please try again.';
}
