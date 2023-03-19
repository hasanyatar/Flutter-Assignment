import 'dart:async';
import 'package:app/injection/injection.dart';
import 'package:app/production/utilities/configuration/text_config.dart';
import 'package:app/production/utilities/routes/app_router.dart';
import 'package:app/production/utilities/themes/theme_config/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  await initialize();
  runApp(MyApp());
}

Future<void> initialize() async {
  await dotenv.load(fileName: ".env");
  await initializeDependencies();

  //* ... other initializations
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Assignment',
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: TextConfig.textScaleFactor),
              child: child!,
            );
          }),
    );
  }
}
