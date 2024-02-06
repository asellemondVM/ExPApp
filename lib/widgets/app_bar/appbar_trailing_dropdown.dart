import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTrailingDropdown extends StatelessWidget {
  AppbarTrailingDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 96.h,
        icon: Container(
          margin: EdgeInsets.fromLTRB(18.h, 8.v, 8.h, 8.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        hintText: "lbl_de".tr,
        items: items,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(8.h, 12.v, 6.h, 12.v),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8.h,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgEllipse5166,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
