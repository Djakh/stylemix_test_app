import 'package:flutter/material.dart';
import 'package:stylemix_test_app/theme/style.dart';

final theme = ThemeData(
    brightness: Style.appBrightness,
    appBarTheme: AppBarTheme(
        elevation: 0.3,
        backgroundColor: Style.colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Style.colors.black, size: 16)),
    primaryColor: Style.colors.primary,
    scaffoldBackgroundColor: Style.colors.white,
    iconTheme: IconThemeData(color: Style.colors.black));
