import 'dart:ffi';

import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/data/models/response/results/title_results.dart';
import 'package:app/production/data/remote/titles/data_source/titles_data_source.dart';
import 'package:app/production/domain/repository/titles_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class TitlesRepositoryImpl implements TitlesRepository {
  final TitlesDataSource titlesDataSource;

  TitlesRepositoryImpl({required this.titlesDataSource});

  @override
  Future<Either<DioError, List<TitleResults>?>> getById(String id) async {
    try {
      final data = await titlesDataSource.getById(id);
      return data == null ? const Right(null) : Right([data]);
    } on DioError catch (exception) {
      return Left(exception);
    } catch (exception) {
      return Left(DioError(
        requestOptions: RequestOptions(path: 'other'),
        error: exception,
      ));
    }
  }

  @override
  Future<Either<DioError, List<TitleResults>?>> getList({TitlesRequest? filters}) async {
    try {
      final data = await titlesDataSource.getList(filters: filters);
      return Right(data);
    } on DioError catch (exception) {
      return Left(exception);
    } catch (exception) {
      return Left(DioError(
        requestOptions: RequestOptions(path: 'other'),
        error: exception,
      ));
    }
  }
}
