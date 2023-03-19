import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../exceptions/exceptions.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw TimeoutException(err.requestOptions, err.response);
      case DioErrorType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions, err.response);
          case 401:
            throw UnauthorizedException(err.requestOptions, err.response);
          case 403:
            throw ForbiddenException(err.requestOptions, err.response);
          case 404:
            throw NotFoundException(err.requestOptions, err.response);
          case 409:
            throw ConflictException(err.requestOptions, err.response);
          case 500:
            throw InternalServerErrorException(err.requestOptions, err.response);
        }
        break;
      case DioErrorType.connectionError:
        throw NoInternetConnectionException(err.requestOptions, err.response);

      default:
    }

    return handler.next(err);
  }
}
