import 'package:app/injector.dart';
import 'package:flutter/material.dart';
import 'utilities/routes/app_router.dart';

Future<void> main() async {
  await initialize();
  runApp(MyApp());
}

Future<void> initialize() async {
  await initializeDependencies();
  //* ... other initializations
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Flutter Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
