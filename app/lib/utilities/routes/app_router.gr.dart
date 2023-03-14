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
    Home.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    Details.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DetailsPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          Home.name,
          path: '/',
        ),
        RouteConfig(
          Details.name,
          path: '/details-page',
        ),
      ];
}

/// generated route for
/// [HomePage]
class Home extends PageRouteInfo<void> {
  const Home()
      : super(
          Home.name,
          path: '/',
        );

  static const String name = 'Home';
}

/// generated route for
/// [DetailsPage]
class Details extends PageRouteInfo<void> {
  const Details()
      : super(
          Details.name,
          path: '/details-page',
        );

  static const String name = 'Details';
}
