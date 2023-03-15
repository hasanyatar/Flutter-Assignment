import 'package:app/production/data/models/response/results/results.dart';
import 'package:app/production/data/models/response/titles/titles.dart';
import 'package:app/production/data/remote/titles/service/titles_service.dart';

import 'titles_data_source.dart';

class TitlesDataSourceImpl implements TitlesDataSource {
  final TitlesService titlesService;

  TitlesDataSourceImpl({required this.titlesService});

  @override
  Future<Results> getById(String id) async {
    return await titlesService.getById(id);
  }

  @override
  Future<Titles> getList() async {
    return await titlesService.getList();
  }
}
