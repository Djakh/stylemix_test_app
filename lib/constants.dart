import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stylemix_test_app/cells/toast.dart';

const String defaultImage =
    "https://user-images.githubusercontent.com/43302778/106805462-7a908400-6645-11eb-958f-cd72b74a17b3.jpg";
const String noAvatar =
    'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-portrait-176256935.jpg';
final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class CustomStaticShowToast {
  static FToast toast = FToast();
  static void initFToast(BuildContext context) {
    toast.init(context);
  }

  static void showToast(String title, {bool isError = false}) {
    toast.removeCustomToast();
    toast.showToast(
        child: CustomToast(title: title, isError: isError),
        gravity: ToastGravity.CENTER,
        toastDuration: const Duration(seconds: 2));
  }
}
