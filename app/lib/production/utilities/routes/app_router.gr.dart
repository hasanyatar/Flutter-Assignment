// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>(
          orElse: () => const DetailsRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DetailsPage(key: args.key),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          DetailsRoute.name,
          path: '/details-page',
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({dynamic key})
      : super(
          HomeRoute.name,
          path: '/',
          args: HomeRouteArgs(key: key),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final dynamic key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DetailsPage]
class DetailsRoute extends PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({dynamic key})
      : super(
          DetailsRoute.name,
          path: '/details-page',
          args: DetailsRouteArgs(key: key),
        );

  static const String name = 'DetailsRoute';
}

class DetailsRouteArgs {
  const DetailsRouteArgs({this.key});

  final dynamic key;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key}';
  }
}
