import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:safa_hr/contact/contact_screen.dart';
import 'package:safa_hr/dashboard/dashboard_screen.dart';
import 'package:safa_hr/gallery/gallery_details_screen.dart';
import 'package:safa_hr/gallery/gallery_screen.dart';

part 'router.g.dart';

GoRouter getRouter(ProviderRef ref) {
  return GoRouter(
    initialLocation: SplashRoute().location,
    routes: $appRoutes,
  );
}

@TypedGoRoute<SplashRoute>(path: "/")
class SplashRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const DashboardScreen();
}

@TypedGoRoute<GalleryRoute>(path: "/gallery")
class GalleryRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const GalleryScreen();
}

@TypedGoRoute<GalleryDetailsRoute>(path: "/gallery/:id")
class GalleryDetailsRoute extends GoRouteData {
  final String id;

  const GalleryDetailsRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) => GalleryDetailsScreen(id: id);
}

@TypedGoRoute<ContactRoute>(path: "/contact")
class ContactRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const ContactScreen();
}
