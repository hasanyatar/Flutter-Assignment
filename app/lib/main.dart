import 'package:app/presentation/views/home/home_page/home_page.dart';
import 'package:flutter/material.dart';

import 'utilities/routes/app_router.dart';

void main() {
  runApp(MyApp());
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
