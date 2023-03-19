import 'package:app/core/network/network_manager.dart';
import 'package:app/production/data/remote/titles/data_source/titles_data_source.dart';
import 'package:app/production/data/remote/titles/data_source/titles_data_source_impl.dart';
import 'package:app/production/data/remote/titles/service/titles_service.dart';
import 'package:app/production/data/repository/titles_repository_impl.dart';
import 'package:app/production/domain/repository/titles_repository.dart';
import 'package:app/production/domain/usecases/titles_usecase.dart';
import 'package:app/production/presentation/blocs/titles_bloc/titles_bloc.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  //* Register Titles
  injector.registerSingleton<NetworkManager>(NetworkManager());
  injector.registerSingleton<TitlesService>(TitlesService(injector.get<NetworkManager>().service));
  injector.registerSingleton<TitlesDataSource>(
      TitlesDataSourceImpl(titlesService: injector.get<TitlesService>()));
  injector.registerSingleton<TitlesRepository>(
      TitlesRepositoryImpl(titlesDataSource: injector.get<TitlesDataSource>()));
  injector.registerSingleton<TitlesUsecase>(TitlesUsecase(injector.get<TitlesRepository>()));
  injector.registerSingleton<TitlesBloc>(TitlesBloc(injector.get<TitlesUsecase>()));
}
