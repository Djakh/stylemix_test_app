import 'package:flutter/material.dart';
import 'package:stylemix_test_app/theme/style.dart';

final theme = ThemeData(
    brightness: Style.appBrightness,
    appBarTheme: AppBarTheme(
        backgroundColor: Style.colors.white,
        elevation: 2,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))),
        centerTitle: true,
        iconTheme: IconThemeData(color: Style.colors.black, size: 16)),
    primaryColor: Style.colors.primary,
    scaffoldBackgroundColor: Style.colors.background,
    iconTheme: IconThemeData(color: Style.colors.black));
