import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:stylemix_test_app/theme/style.dart';

enum TextInputFieldType { primary, obscure, large, phone, number, cardNumber, cardDate, date }

class TextInputField extends StatefulWidget {
  final TextInputFieldType? type;
  final String? placeholder;
  final String? title;
  final String? error;
  final bool obscureText;
  final bool autofocus;
  final bool autocorrect;
  final bool readonly;
  final TextEditingController? controller;
  final ValueChanged<String>? onChange;
  final GestureTapCallback? onTap;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? minLines;
  final bool? enabled;
  final int? maxLength;
  final Color? backgroundColor;
  final double? height;
  final String? hintText;
  final Widget? prefixIcon;
  final Function()? onEditingComplete;
  final Widget? suffix;
  final Border? border;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;

  const TextInputField.cardNumber({
    @required this.controller,
    Key? key,
    this.placeholder,
    this.title,
    this.error,
    this.autofocus = false,
    this.autocorrect = false,
    this.readonly = false,
    this.enabled = true,
    this.onChange,
    this.onTap,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.suffixIcon,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.backgroundColor,
    this.height,
    this.hintText,
    this.onEditingComplete,
    this.prefixIcon,
    this.suffix,
    this.border,
    this.validator,
    this.onSaved,
  })  : type = TextInputFieldType.cardNumber,
        obscureText = false,
        super(key: key);
  const TextInputField.number({
    @required this.controller,
    Key? key,
    this.placeholder,
    this.title,
    this.error,
    this.autofocus = false,
    this.autocorrect = false,
    this.readonly = false,
    this.enabled = true,
    this.onChange,
    this.onTap,
    this.keyboardType = TextInputType.phone,
    this.focusNode,
    this.suffixIcon,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.backgroundColor,
    this.height,
    this.hintText,
    this.onEditingComplete,
    this.prefixIcon,
    this.suffix,
    this.border,
    this.validator,
    this.onSaved,
  })  : type = TextInputFieldType.number,
        obscureText = false,
        super(key: key);

  const TextInputField.primary(
      {required this.controller,
      Key? key,
      this.placeholder,
      this.title,
      this.error,
      this.autofocus = false,
      this.autocorrect = false,
      this.readonly = false,
      this.enabled = true,
      this.onChange,
      this.onTap,
      this.keyboardType = TextInputType.text,
      this.focusNode,
      this.suffixIcon,
      this.backgroundColor,
      this.height,
      this.hintText,
      this.maxLines = 1,
      this.minLines = 1,
      this.onEditingComplete,
      this.maxLength,
      this.prefixIcon,
      this.suffix,
      this.border,
      this.validator,
      this.onSaved})
      : obscureText = false,
        type = TextInputFieldType.primary,
        super(key: key);
  const TextInputField.date(
      {required this.controller,
      Key? key,
      this.placeholder,
      this.title,
      this.error,
      this.autofocus = false,
      this.autocorrect = false,
      this.readonly = false,
      this.enabled = true,
      this.onChange,
      this.onTap,
      this.keyboardType = TextInputType.text,
      this.focusNode,
      this.suffixIcon,
      this.maxLines = 1,
      this.minLines = 1,
      this.onEditingComplete,
      this.maxLength,
      this.backgroundColor,
      this.height,
      this.hintText,
      this.prefixIcon,
      this.suffix,
      this.border,
      this.validator,
      this.onSaved})
      : obscureText = false,
        type = TextInputFieldType.date,
        super(key: key);

  const TextInputField.cardDate({
    @required this.controller,
    Key? key,
    this.placeholder,
    this.title,
    this.error,
    this.autofocus = false,
    this.autocorrect = false,
    this.readonly = false,
    this.enabled = true,
    this.onChange,
    this.onTap,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.suffixIcon,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.backgroundColor,
    this.height,
    this.hintText,
    this.onEditingComplete,
    this.prefixIcon,
    this.suffix,
    this.border,
    this.validator,
    this.onSaved,
  })  : type = TextInputFieldType.cardDate,
        obscureText = false,
        super(key: key);

  const TextInputField.obscure(
      {Key? key,
      this.placeholder,
      this.title,
      this.error,
      this.autofocus = false,
      this.autocorrect = false,
      this.readonly = false,
      this.enabled = true,
      @required this.controller,
      this.onChange,
      this.onTap,
      this.keyboardType = TextInputType.text,
      this.focusNode,
      this.suffixIcon,
      this.maxLines = 1,
      this.minLines = 1,
      this.onEditingComplete,
      this.maxLength,
      this.backgroundColor,
      this.height,
      this.hintText,
      this.prefixIcon,
      this.suffix,
      this.border,
      this.validator,
      this.onSaved})
      : obscureText = true,
        type = TextInputFieldType.obscure,
        super(key: key);

  const TextInputField.phone(
      {@required this.controller,
      Key? key,
      this.placeholder,
      this.title,
      this.error,
      this.autofocus = false,
      this.autocorrect = false,
      this.readonly = false,
      this.onChange,
      this.onTap,
      this.keyboardType = TextInputType.number,
      this.focusNode,
      this.enabled = true,
      this.suffixIcon,
      this.maxLines = 1,
      this.minLines = 1,
      this.onEditingComplete,
      this.maxLength,
      this.backgroundColor,
      this.height,
      this.hintText,
      this.prefixIcon,
      this.suffix,
      this.border,
      this.validator,
      this.onSaved})
      : type = TextInputFieldType.phone,
        obscureText = false,
        super(key: key);

  const TextInputField.large(
      {@required this.controller,
      Key? key,
      this.placeholder,
      this.title,
      this.error,
      this.autofocus = false,
      this.autocorrect = false,
      this.readonly = false,
      this.enabled = true,
      this.onChange,
      this.onTap,
      this.keyboardType = TextInputType.text,
      this.focusNode,
      this.suffixIcon,
      this.maxLines,
      this.onEditingComplete,
      this.maxLength,
      this.backgroundColor,
      this.height,
      this.hintText,
      this.prefixIcon,
      this.suffix,
      this.border,
      this.validator,
      this.onSaved})
      : obscureText = false,
        type = TextInputFieldType.large,
        minLines = 5,
        super(key: key);

  @override
  _TextInputFieldState createState() => _TextInputFieldState(focusNode ?? FocusNode(), obscureText, autofocus);
}

class _TextInputFieldState extends State<TextInputField> {
  FocusNode focusNode;
  bool obscureText;
  bool focused;

  _TextInputFieldState(this.focusNode, this.obscureText, this.focused);

  get borderWidth => widget.error != null || focused ? 1.0 : 0.0;

  get borderColor => widget.error != null ? Style.colors.error : (focused ? Style.colors.primary : Style.colors.grey2);

  bool? isObscureTextField;

  @override
  void initState() {
    super.initState();
    isObscureTextField = obscureText;
    focusNode.addListener(onFocusChange);
  }

  void onFocusChange() {
    if (!mounted) return;
    setState(() {
      focused = focusNode.hasFocus;
    });
  }

  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  Widget get visibilityIcon => IconButton(
      onPressed: toggle,
      icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
      padding: const EdgeInsets.all(0));

  Widget get errorText => Text(widget.error!, style: Style.minTextw4.copyWith(color: Style.colors.error));

  Widget textField() => Theme(
      data: ThemeData(fontFamily: Style.fontFamily, primaryColor: Style.colors.primary, hintColor: Style.colors.grey),
      child: Material(
          color: Colors.transparent,
          child: TextFormField(
              validator: widget.validator,
              cursorColor: Style.colors.primary,
              keyboardAppearance: Style.appBrightness,
              readOnly: widget.readonly,
              autocorrect: widget.autocorrect,
              autofocus: widget.autofocus,
              controller: widget.controller,
              focusNode: focusNode,
              key: widget.key,
              keyboardType: widget.keyboardType,
              obscureText: obscureText,
              onChanged: widget.onChange,
              onSaved: widget.onSaved,
              onTap: widget.onTap,
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              inputFormatters: widget.type?.inputFormatter,
              onEditingComplete: widget.onEditingComplete,
              decoration: InputDecoration(
                  prefixStyle: const TextStyle(fontSize: 16),
                  prefixText: widget.type == TextInputFieldType.phone ? "+998" : null,
                  alignLabelWithHint: widget.minLines! > 1,
                  labelText: widget.title ?? widget.placeholder,
                  hintText: widget.hintText,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: Style.border10,
                    borderSide: BorderSide(color: Style.colors.primary, width: 0.7),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: Style.border10, borderSide: BorderSide(color: Style.colors.grey, width: 0.7)),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  suffix: widget.suffix,
                  suffixIcon: isObscureTextField! ? visibilityIcon : widget.suffixIcon))));

  @override
  Widget build(BuildContext context) {
    Column column = Column(crossAxisAlignment: CrossAxisAlignment.start, children: [textField()]);

    if (widget.error != null) {
      column.children.addAll([const SizedBox(height: 4.0), errorText]);
    }

    return column;
  }
}

extension on TextInputFieldType {
  List<TextInputFormatter>? get inputFormatter {
    List<TextInputFormatter>? inputFormatter;
    switch (this) {
      case TextInputFieldType.phone:
        inputFormatter = [MaskTextInputFormatter(mask: ' ## ### ## ##')];
        break;
      case TextInputFieldType.cardNumber:
        inputFormatter = [MaskTextInputFormatter(mask: '#### #### #### ####')];
        break;

      case TextInputFieldType.cardDate:
        inputFormatter = [MaskTextInputFormatter(mask: '##/##')];
        break;
      case TextInputFieldType.date:
        inputFormatter = [MaskTextInputFormatter(mask: '####-##-##')];
        break;
      case TextInputFieldType.number:
        inputFormatter = <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))];
        break;
      default:
        inputFormatter = null;
        break;
    }

    return inputFormatter;
  }
}
