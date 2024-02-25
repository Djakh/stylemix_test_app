import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylemix_test_app/theme/style.dart';

enum ButtonType { primary, text, delete, border, icon }

class Button extends StatelessWidget {
  final ButtonType type;
  final Function()? onPressed;
  final Color? color;
  final Color? borderColor;

  final ShapeBorder? shape;
  final Widget? child;
  final String? text;
  final Color? textColor;
  final double? minWidth;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final bool spinner;
  final double? height;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;

  const Button.primary({
    Key? key,
    this.color,
    this.child,
    this.text,
    this.textColor,
    @required this.onPressed,
    this.padding,
    this.margin,
    this.spinner = false,
    this.minWidth,
    this.height,
  })  : type = ButtonType.primary,
        shape = null,
        icon = null,
        iconSize = null,
        iconColor = null,
        borderColor = null,
        super(key: key);

  const Button.text({
    Key? key,
    this.color,
    this.child,
    this.text,
    this.textColor,
    this.padding,
    this.margin,
    @required this.onPressed,
    this.spinner = false,
    this.height,
  })  : type = ButtonType.text,
        shape = null,
        minWidth = null,
        icon = null,
        iconSize = null,
        iconColor = null,
        borderColor = null,
        super(key: key);

  const Button.delete({
    Key? key,
    this.color,
    this.child,
    this.text,
    this.textColor,
    @required this.onPressed,
    this.padding,
    this.margin,
    this.spinner = false,
    this.height,
  })  : type = ButtonType.delete,
        shape = null,
        minWidth = null,
        icon = null,
        iconSize = null,
        iconColor = null,
        borderColor = null,
        super(key: key);

  const Button.border({
    Key? key,
    this.color,
    this.child,
    this.text,
    this.textColor,
    @required this.onPressed,
    this.padding,
    this.margin,
    this.spinner = false,
    this.minWidth,
    this.height,
    this.shape,
    this.borderColor,
  })  : type = ButtonType.border,
        icon = null,
        iconSize = null,
        iconColor = null,
        super(key: key);

  const Button.icon({
    Key? key,
    this.color,
    this.child,
    this.text,
    this.textColor,
    @required this.onPressed,
    this.padding,
    this.margin,
    this.spinner = false,
    this.height,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.minWidth,
  })  : type = ButtonType.icon,
        borderColor = null,
        shape = null,
        super(key: key);

  Widget get calculatedChild {
    Widget widget;
    switch (type) {
      case ButtonType.primary:
        widget = Text(
          text!,
          style: Style.bodyw6.copyWith(color: textColor ?? Style.colors.white),
        );
        break;

      case ButtonType.text:
        widget = Text(
          text!,
          style: Style.bodyw5.copyWith(color: textColor ?? Style.colors.primary),
        );
        break;

      case ButtonType.delete:
        widget = Text(
          text!,
          style: Style.body3w5.copyWith(color: Style.colors.error),
        );
        break;

      case ButtonType.border:
        widget = Text(
          text!,
          style: Style.bodyw6.copyWith(color: textColor ?? Style.colors.primary),
        );
        break;

      case ButtonType.icon:
        widget = Icon(
          icon,
          color: iconColor ?? Style.colors.white,
          size: iconSize,
        );
        break;
    }
    return FittedBox(fit: BoxFit.fitWidth, child: widget);
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: margin ?? Style.padding0,
        child: MaterialButton(
          elevation: 0,
          highlightElevation: 0,
          minWidth: minWidth,
          height: height ?? 44,
          disabledColor: Style.colors.grey4,
          padding: padding ?? Style.padding12,
          color: color ?? type.color,
          shape: shape ?? type.shape,
          onPressed: spinner ? null : onPressed,
          child: spinner ? const CupertinoActivityIndicator() : child ?? calculatedChild,
        ),
      );
}

extension on ButtonType {
  Color get color {
    Color color;
    switch (this) {
      case ButtonType.primary:
        color = Style.colors.primary;
        break;

      case ButtonType.text:
        color = Style.colors.primary.withOpacity(0.2);
        break;

      case ButtonType.delete:
        color = Style.colors.error.withOpacity(0.2);
        break;
      case ButtonType.border:
        color = Style.colors.transparent;
        break;
      case ButtonType.icon:
        color = Style.colors.primary;
        break;
    }
    return color;
  }

  ShapeBorder get shape {
    ShapeBorder shape;
    switch (this) {
      case ButtonType.primary:
        shape = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        );
        break;

      case ButtonType.text:
        shape = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        );
        break;

      case ButtonType.delete:
        shape = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        );
        break;

      case ButtonType.border:
        shape = RoundedRectangleBorder(
          side: BorderSide(color: Style.colors.grey2, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8.0),
        );
        break;
      case ButtonType.icon:
        shape = const CircleBorder();
        break;
    }
    return shape;
  }
}
