import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/data/models/response/results/title_results.dart';

abstract class TitlesDataSource {
  Future<List<TitleResults>?> getList({TitlesRequest? filters});
  Future<TitleResults?> getById(String id);
}
