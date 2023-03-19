import 'package:dio/dio.dart';

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  DioErrorType get type => DioErrorType.unknown;

  @override
  String get message => 'No internet connection detected, please try again.';
}
