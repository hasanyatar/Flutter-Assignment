import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/data/models/response/results/results.dart';
import 'package:app/production/data/models/response/titles/titles.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'titles_service.g.dart';

@RestApi()
abstract class TitlesService {
  factory TitlesService(Dio dio, {String baseUrl}) = _TitlesService;

  @GET('/titles')
  Future<Titles?> getList(@Queries() TitlesRequest? request);

  @GET('/titles/{id}')
  Future<Results?> getById(@Path('id') String id);
}
