import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/data/models/response/results/title_results.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class TitlesRepository {
  Future<Either<DioError, List<TitleResults>?>> getList({TitlesRequest? filters});
  Future<Either<DioError, List<TitleResults>?>> getById(String id);
}
