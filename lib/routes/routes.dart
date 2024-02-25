import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:stylemix_test_app/app.dart';
import 'package:stylemix_test_app/screens/home.dart';

class Application {
  static FluroRouter? router;
}

class AppRoutes {
  static String app = '/';
  static String home = 'home';

  static void defineRoutes(FluroRouter router) {
    router.notFoundHandler = notFound;
    router.define(app, handler: appHandler);
    router.define(home, handler: homeHandler);
  }
}

final appHandler = Handler(handlerFunc: (_, __) => const StylemixTestApp());
final notFound = Handler(handlerFunc: (_, __) => Container());
final homeHandler = Handler(handlerFunc: (_, __) => const HomeController());
