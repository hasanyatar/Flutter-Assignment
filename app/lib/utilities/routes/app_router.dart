import 'package:app/presentation/views/home/details_page/details_page.dart';
import 'package:app/presentation/views/home/home_page/home_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route', //* optional, replaces 'Page' with '' in route names
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, name: 'home', path: '/'),
    AutoRoute(page: DetailsPage, name: 'details', path: '/details-page'),
  ],
)
class AppRouter extends _$AppRouter {}
