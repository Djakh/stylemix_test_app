import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:stylemix_test_app/app.dart';
import 'package:stylemix_test_app/models/food.dart';
import 'package:stylemix_test_app/screens/dashboard/details.dart';
import 'package:stylemix_test_app/screens/home.dart';

class Application {
  static FluroRouter? router;
}

class AppRoutes {
  static String app = '/';
  static String home = 'home';
  static String details = 'details';

  static void defineRoutes(FluroRouter router) {
    router.notFoundHandler = notFound;
    router.define(app, handler: appHandler);
    router.define(home, handler: homeHandler);
    router.define(details, handler: detailsHandler);
  }
}

final appHandler = Handler(handlerFunc: (_, __) => const StylemixTestApp());
final notFound = Handler(handlerFunc: (_, __) => Container());
final homeHandler = Handler(handlerFunc: (_, __) => const HomeController());
final detailsHandler = Handler(handlerFunc: (context, _) {
  var args = ModalRoute.of(context!)!.settings.arguments as Food;
  return ProductDetailsController(food: args);
});
