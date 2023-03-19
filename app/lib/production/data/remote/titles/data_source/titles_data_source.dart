import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/data/models/response/results/results.dart';
import 'package:app/production/data/models/response/results/title_results.dart';

abstract class TitlesDataSource {
  Future<List<TitleResults>?> getList({TitlesRequest? filters = const TitlesRequest(page: 1)});
  Future<TitleResults?> getById(String id);
}
