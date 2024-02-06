import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton({
    Key? key,
    required this.onChange,
    this.decoration,
    this.alignment,
    this.isRightCheck,
    this.iconSize,
    this.value,
    this.groupValue,
    this.text,
    this.width,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.gradient,
    this.backgroundColor,
  }) : super(
          key: key,
        );

  final BoxDecoration? decoration;
  final Alignment? alignment;
  final bool? isRightCheck;
  final double? iconSize;
  String? value;
  final String? groupValue;
  final Function(String) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final Gradient? gradient;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildRadioButtonWidget,
          )
        : buildRadioButtonWidget;
  }

  bool get isGradient => gradient != null;
  BoxDecoration get gradientDecoration => BoxDecoration(gradient: gradient);
  Widget get buildRadioButtonWidget => InkWell(
        onTap: () {
          onChange(value!);
        },
        child: Container(
          decoration: isGradient ? gradientDecoration : decoration,
          width: width,
          padding: padding,
          child: (isRightCheck ?? false)
              ? rightSideRadioButton
              : leftSideRadioButton,
        ),
      );
  Widget get leftSideRadioButton => Row(
        children: [
          Padding(
            child: radioButtonWidget,
            padding: EdgeInsets.only(right: 8),
          ),
          textWidget,
        ],
      );
  Widget get rightSideRadioButton => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          textWidget,
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: radioButtonWidget,
          ),
        ],
      );
  Widget get textWidget => Text(
        text ?? "",
        textAlign: textAlignment ?? TextAlign.center,
        style: textStyle ?? theme.textTheme.labelLarge,
      );
  Widget get radioButtonWidget => SizedBox(
        height: iconSize ?? 16,
        width: iconSize ?? 16,
        child: Radio<String>(
          visualDensity: VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          value: value ?? "",
          groupValue: groupValue,
          onChanged: (value) {
            onChange(value!);
          },
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              // Set the inactive color to #ECEDF3
              if (states.contains(MaterialState.disabled)) {
                return const Color(0xFFECEDF3);
              }

              // Set the selected color to blue
              if (states.contains(MaterialState.selected)) {
                return Colors.blue;
              }

              return Color(0xFFECEDF3); // Use a default color for other states
            },
          ),
        ),
      );
  BoxDecoration get radioButtonDecoration =>
      BoxDecoration(color: backgroundColor);
}
