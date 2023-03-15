import 'package:app/production/data/models/response/results/results.dart';
import 'package:app/production/data/models/response/titles/titles.dart';

abstract class TitlesDataSource {
  Future<Titles> getList();
  Future<Results> getById(String id);
}
