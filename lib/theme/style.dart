import 'package:flutter/cupertino.dart';
import 'package:stylemix_test_app/theme/colors.dart';

class Style {
  /// Application Colors
  static AppColors get colors => const AppColors();

  /// Brightness of the app
  static Brightness get appBrightness => Brightness.light;

  ///Gradient
  static Gradient get gradient => LinearGradient(
      begin: Alignment.topLeft, end: Alignment.topRight, colors: [Style.colors.first, Style.colors.secondary]);

  /// Border radius templates
  static BorderRadius get borderVerBottom95 => const BorderRadius.vertical(
        bottom: Radius.circular(95.0),
      );

  static BorderRadius get border95 => const BorderRadius.all(
        Radius.circular(95.0),
      );

  static BorderRadius get border32 => const BorderRadius.all(
        Radius.circular(32.0),
      );

  static BorderRadius get borderVer24 => const BorderRadius.vertical(
        top: Radius.circular(24.0),
      );

  static BorderRadius get border24 => const BorderRadius.all(
        Radius.circular(24.0),
      );

  static BorderRadius get borderVer36 => const BorderRadius.vertical(
        top: Radius.circular(36.0),
      );

  static BorderRadius get border20 => const BorderRadius.all(
        Radius.circular(20.0),
      );

  static BorderRadius get borderVer20 => const BorderRadius.vertical(
        top: Radius.circular(20.0),
      );

  static BorderRadius get borderTop20 => const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      );

  static BorderRadius get border16 => const BorderRadius.all(
        Radius.circular(16.0),
      );

  static BorderRadius get borderOnlyTop16 =>
      const BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0));

  static BorderRadius get border14 => const BorderRadius.all(
        Radius.circular(14.0),
      );
  static BorderRadius get border12 => const BorderRadius.all(Radius.circular(12.0));

  static BorderRadius get border10 => const BorderRadius.all(Radius.circular(10.0));

  static BorderRadius get borderOnlyRight8 => const BorderRadius.only(
        topRight: Radius.circular(8.0),
        bottomRight: Radius.circular(8.0),
      );

  static BorderRadius get borderOnlyLeft8 => const BorderRadius.only(
        topLeft: Radius.circular(8.0),
        bottomLeft: Radius.circular(8.0),
      );

  static BorderRadius get borderOnlyTopLeft8 => const BorderRadius.only(
        topLeft: Radius.circular(8.0),
      );
  static BorderRadius get border8 => const BorderRadius.all(
        Radius.circular(8.0),
      );

  static BorderRadius get border6 => const BorderRadius.all(
        Radius.circular(6.0),
      );

  static BorderRadius get border4 => const BorderRadius.all(
        Radius.circular(4.0),
      );

  static BorderRadius get border2 => const BorderRadius.all(
        Radius.circular(2.0),
      );

  /// Padding templates
  static EdgeInsets get padding0 => EdgeInsets.zero;

  static EdgeInsets get padding4 => const EdgeInsets.all(4.0);

  static EdgeInsets get paddingVer4 => const EdgeInsets.symmetric(vertical: 4.0);

  static EdgeInsets get paddingHor34Ver4 => const EdgeInsets.symmetric(horizontal: 34, vertical: 4.0);

  static EdgeInsets get paddingHor4Ver6 => const EdgeInsets.symmetric(horizontal: 4, vertical: 6.0);

  static EdgeInsets get padding6 => const EdgeInsets.all(6.0);

  static EdgeInsets get paddingHor6Ver12 => const EdgeInsets.symmetric(horizontal: 6, vertical: 12.0);

  static EdgeInsets get padding8 => const EdgeInsets.all(8.0);

  static EdgeInsets get paddingHor8 => const EdgeInsets.symmetric(horizontal: 8.0);

  static EdgeInsets get paddingHor8Ver4 => const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4);

  static EdgeInsets get padding10 => const EdgeInsets.all(10.0);

  static EdgeInsets get paddingHor10 => const EdgeInsets.symmetric(horizontal: 10.0);

  static EdgeInsets get padding12 => const EdgeInsets.all(12.0);

  static EdgeInsets get paddingVer12 => const EdgeInsets.symmetric(vertical: 12.0);

  static EdgeInsets get paddingHor12 => const EdgeInsets.symmetric(horizontal: 12.0);

  static EdgeInsets get paddingHor12Ver6 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6);

  static EdgeInsets get paddingHor12Ver8 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8);

  static EdgeInsets get paddingHor12Ver10 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10);

  static EdgeInsets get paddingHor12Ver14 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14);

  static EdgeInsets get paddingHor12Ver16 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16);

  static EdgeInsets get padding14 => const EdgeInsets.all(14.0);

  static EdgeInsets get padding16 => const EdgeInsets.all(16.0);

  static EdgeInsets get paddingHor16 => const EdgeInsets.symmetric(horizontal: 16.0);

  static EdgeInsets get paddingHor16Ver8 => const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);

  static EdgeInsets get paddingHor16Ver12 => const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12);

  static EdgeInsets get paddingVer16 => const EdgeInsets.symmetric(vertical: 16.0);

  static EdgeInsets get paddingVer16Hor12 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16);

  static EdgeInsets get paddingVer18Hor18 => const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18);

  static EdgeInsets get paddingOnlyLeft16 => const EdgeInsets.only(left: 16.0);
  static EdgeInsets get paddingOnlyTop12 => const EdgeInsets.only(top: 12.0);

  static EdgeInsets get paddingOnlyRight16 => const EdgeInsets.only(right: 16.0);

  static EdgeInsets get padding18 => const EdgeInsets.all(18.0);

  static EdgeInsets get paddingVer18 => const EdgeInsets.symmetric(vertical: 18.0);

  static EdgeInsets get padding20 => const EdgeInsets.all(20.0);

  static EdgeInsets get paddingHor20 => const EdgeInsets.symmetric(horizontal: 20.0);

  static EdgeInsets get paddingVer20 => const EdgeInsets.symmetric(horizontal: 20.0);

  static EdgeInsets get paddingHor20Ver12 => const EdgeInsets.symmetric(horizontal: 20, vertical: 12.0);
  static EdgeInsets get paddingHor24Ver12 => const EdgeInsets.symmetric(horizontal: 20, vertical: 12.0);

  static EdgeInsets get padding22 => const EdgeInsets.all(22.0);

  static EdgeInsets get padding24 => const EdgeInsets.all(24.0);

  static EdgeInsets get paddingHor24Ver6 => const EdgeInsets.symmetric(horizontal: 24, vertical: 6.0);

  static EdgeInsets get paddingHor24Ver20 => const EdgeInsets.symmetric(horizontal: 24, vertical: 20.0);

  static EdgeInsets get paddingHor20Ver40 => const EdgeInsets.symmetric(horizontal: 20, vertical: 40.0);

  static EdgeInsets get pading16$20$16$12 => const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0);
  static EdgeInsets get pading16$16$16$0 => const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0);
  static EdgeInsets get pading12$0$0$12 => const EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 12.0);

  static EdgeInsets get paddingHor30 => const EdgeInsets.symmetric(horizontal: 30.0);

  static EdgeInsets get padding32 => const EdgeInsets.all(32.0);

  static EdgeInsets get paddingHor40 => const EdgeInsets.symmetric(horizontal: 40.0);

  static EdgeInsets get paddingHor48 => const EdgeInsets.symmetric(horizontal: 48.0);

  static EdgeInsets paddingHorizontal(double horizontal) => EdgeInsets.symmetric(horizontal: horizontal);

  static EdgeInsets paddingVertical(double vertical) => EdgeInsets.symmetric(vertical: vertical);

  /// Margin templates
  static EdgeInsets get margin20 => padding20;

  /// Typography
  static String get fontFamily => "Inter";

  static TextStyle get headline6w5 => TextStyle(
      fontSize: 34.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w500);

  static TextStyle get headline5w3 => TextStyle(
      fontSize: 32.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w300);

  static TextStyle get headline3w5 => TextStyle(
      fontSize: 28.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w500);

  static TextStyle get headlinew7 => TextStyle(
      fontSize: 24.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w700);

  static TextStyle get headlinew5 => TextStyle(
      fontSize: 24.0,
      letterSpacing: 0.5,
      color: colors.grey7,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none);

  static TextStyle get body3w6 => TextStyle(
      fontSize: 20.0,
      letterSpacing: 0.15,
      color: colors.grey7,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.none);

  static TextStyle get body3w5 => TextStyle(
        fontSize: 20.0,
        letterSpacing: 0.15,
        color: colors.grey7,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get body3w4 => TextStyle(
      fontSize: 20.0,
      letterSpacing: 0.15,
      color: colors.grey7,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none);
  static TextStyle get body3w3 => TextStyle(
        fontSize: 20.0,
        letterSpacing: 0.15,
        color: colors.grey7,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get body2w7 => TextStyle(
        fontSize: 18.0,
        letterSpacing: 0.15,
        color: colors.black,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get body2w6 => TextStyle(
        fontSize: 18.0,
        letterSpacing: 0.15,
        color: colors.grey7,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get body2w5 => TextStyle(
        fontSize: 18.0,
        letterSpacing: 0.15,
        color: colors.grey7,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get body2w4 => TextStyle(
      fontSize: 18.0,
      letterSpacing: 0.15,
      color: colors.grey7,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none);

  static TextStyle get body2w3 => TextStyle(
        fontSize: 18.0,
        letterSpacing: 0.15,
        color: colors.grey7,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get bodyw7 => TextStyle(
      fontSize: 16.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w700);

  static TextStyle get bodyw6 => TextStyle(
      fontSize: 16.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w600);

  static TextStyle get bodyw5 => TextStyle(
      fontSize: 16.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w500);

  static TextStyle get bodyw4 => TextStyle(
      fontSize: 16.0,
      letterSpacing: 0.5,
      color: colors.grey7,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none);

  static TextStyle get bodyw3 => TextStyle(
      fontSize: 16.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w300);

  static TextStyle get errorw5 => TextStyle(
      fontSize: 16.0, letterSpacing: 0.5, color: colors.error, fontFamily: fontFamily, fontWeight: FontWeight.w500);

  static TextStyle get smallTextw6 => TextStyle(
      fontSize: 14.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w600);

  static TextStyle get smallTextw5 => TextStyle(
      fontSize: 14.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w500);

  static TextStyle get smallTextw4 => TextStyle(
      fontSize: 14.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w400);

  static TextStyle get smallTextw3 => TextStyle(
      fontSize: 14.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w300);

  static TextStyle get minTextw6 => TextStyle(
      fontSize: 12.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w600);

  static TextStyle get minTextw5 => TextStyle(
      fontSize: 12.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w500);

  static TextStyle get minTextw4 => TextStyle(
      fontSize: 12.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w400);
  static TextStyle get minTextw2 => TextStyle(
      fontSize: 8.0, letterSpacing: 0.5, color: colors.grey7, fontFamily: fontFamily, fontWeight: FontWeight.w200);
}
