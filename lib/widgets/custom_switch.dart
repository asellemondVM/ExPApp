import 'package:enexpet/core/app_export.dart';
import 'package:flutter/cupertino.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(key: key);

  final Alignment? alignment;
  bool? value;
  final Function(bool) onChange;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 10,
      width: width ?? 5,
      child: alignment != null
          ? Align(
              alignment: alignment ?? Alignment.center,
              child: switchWidget,
            )
          : switchWidget,
    );
  }

  Widget get switchWidget => Transform.scale(
        scale: 0.7, // Adjust the scale factor according to your needs
        child: CupertinoSwitch(
          value: value ?? false,
          trackColor: appTheme.gray50,
          thumbColor: (value ?? false)
              ? theme.colorScheme.primary
              : appTheme.blueGray10001,
          activeColor: appTheme.gray50,
          onChanged: (value) {
            onChange(value);
          },
        ),
      );
}
