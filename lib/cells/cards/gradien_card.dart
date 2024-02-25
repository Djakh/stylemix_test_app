import 'package:flutter/material.dart';
import 'package:stylemix_test_app/theme/style.dart';

class GradientCard extends StatelessWidget {
  final Widget? child;
  final Gradient? gradient;
  final Function()? onTap;
  final EdgeInsets? contentPadding;
  final EdgeInsets? margin;
  final bool roundedBorders;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  const GradientCard(
      {this.child,
      this.onTap,
      this.gradient,
      this.contentPadding,
      this.margin,
      this.roundedBorders = true,
      this.backgroundColor,
      this.borderRadius,
      Key? key})
      : super(key: key);

  BorderRadius get radius =>
      roundedBorders ? (borderRadius != null ? borderRadius! : BorderRadius.zero) : BorderRadius.zero;

  @override
  Widget build(BuildContext context) => Card(
      elevation: 6.0,
      shadowColor: Style.colors.shadow,
      margin: margin,
      shape: RoundedRectangleBorder(borderRadius: radius),
      child: ClipRRect(
          borderRadius: radius,
          child: Material(
              child: GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding: contentPadding, decoration: BoxDecoration(color: backgroundColor), child: child)))));
}
