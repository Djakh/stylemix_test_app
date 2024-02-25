import 'package:flutter/cupertino.dart';
import 'package:stylemix_test_app/theme/style.dart';

class CustomToast extends StatelessWidget {
  final String? title;
  final bool isError;
  final Function()? onTap;
  final bool button;
  const CustomToast({Key? key, @required this.title, this.isError = false, this.onTap, this.button = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
          borderRadius: Style.border10, color: (isError ? Style.colors.error : Style.colors.primary).withOpacity(0.8)),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
            child: Text(title!,
                style: Style.smallTextw3.copyWith(color: Style.colors.white),
                textAlign: !button ? TextAlign.center : null)),
        Visibility(
            visible: button,
            child: GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: Style.padding8,
                    decoration:
                        BoxDecoration(borderRadius: Style.border10, border: Border.all(color: Style.colors.white)),
                    child: Text("Use offline", style: Style.smallTextw3.copyWith(color: Style.colors.white)))))
      ]));
}
