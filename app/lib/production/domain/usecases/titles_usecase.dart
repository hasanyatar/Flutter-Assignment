import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/data/models/response/results/title_results.dart';
import 'package:app/production/domain/repository/titles_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class TitlesUsecase {
  final TitlesRepository _titlesRepository;

  TitlesUsecase(this._titlesRepository);

  Future<Either<DioError, List<TitleResults>?>> getById(String id) => _titlesRepository.getById(id);

  Future<Either<DioError, List<TitleResults>?>> getList({TitlesRequest? filters}) =>
      _titlesRepository.getList(filters: filters);
}
