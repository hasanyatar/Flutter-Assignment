import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/data/models/response/results/results.dart';
import 'package:app/production/data/models/response/results/title_results.dart';
import 'package:app/production/data/models/response/titles/titles.dart';
import 'package:app/production/data/remote/titles/service/titles_service.dart';

import 'titles_data_source.dart';

class TitlesDataSourceImpl implements TitlesDataSource {
  final TitlesService titlesService;

  TitlesDataSourceImpl({required this.titlesService});

  @override
  Future<TitleResults?> getById(String id) async => (await titlesService.getById(id))?.titleResults;

  @override
  Future<List<TitleResults>?> getList({TitlesRequest? filters}) async {
    filters ??= const TitlesRequest(page: 1);

    return (await titlesService.getList(filters))?.results;
  }
}
