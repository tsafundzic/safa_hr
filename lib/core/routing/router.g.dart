// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $galleryRoute,
      $galleryDetailsRoute,
      $contactRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $galleryRoute => GoRouteData.$route(
      path: '/gallery',
      factory: $GalleryRouteExtension._fromState,
    );

extension $GalleryRouteExtension on GalleryRoute {
  static GalleryRoute _fromState(GoRouterState state) => GalleryRoute();

  String get location => GoRouteData.$location(
        '/gallery',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $galleryDetailsRoute => GoRouteData.$route(
      path: '/gallery/:id',
      factory: $GalleryDetailsRouteExtension._fromState,
    );

extension $GalleryDetailsRouteExtension on GalleryDetailsRoute {
  static GalleryDetailsRoute _fromState(GoRouterState state) =>
      GalleryDetailsRoute(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/gallery/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $contactRoute => GoRouteData.$route(
      path: '/contact',
      factory: $ContactRouteExtension._fromState,
    );

extension $ContactRouteExtension on ContactRoute {
  static ContactRoute _fromState(GoRouterState state) => ContactRoute();

  String get location => GoRouteData.$location(
        '/contact',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
