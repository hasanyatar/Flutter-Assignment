import 'package:app/core/network/network_manager.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector.registerLazySingleton(() => NetworkManager);
}
