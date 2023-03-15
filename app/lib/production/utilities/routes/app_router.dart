import 'package:app/production/presentation/views/home/details_page/details_page.dart';
import 'package:app/production/presentation/views/home/home_page/home_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, path: '/', initial: true),
    AutoRoute(page: DetailsPage, path: '/details-page'),
  ],
)
class AppRouter extends _$AppRouter {}
