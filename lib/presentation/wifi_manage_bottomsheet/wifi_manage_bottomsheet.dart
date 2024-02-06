import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/wifi_manage_controller.dart';

class WifiManageBottomsheet extends StatelessWidget {
  WifiManageBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  WifiManageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 136.h,
            height: 4,
            child: Divider(
              color: appTheme.black900,
            ),
          ),
          SizedBox(height: 36.v),
          CustomImageView(
            imagePath: 'assets/images/info_icone.png',
            height: 100.adaptSize,
            width: 100.adaptSize,
          ),
          SizedBox(height: 35.v),
          Text(
            "lbl_are_you_sure".tr,
            style: CustomTextStyles.titleLarge_1,
          ),
          SizedBox(height: 16.v),
          Text(
            "msg_are_you_sure_you".tr,
            style: CustomTextStyles.bodySmallBluegray900,
          ),
          SizedBox(height: 32.v),
          CustomElevatedButton(
            text: "lbl_exit".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLineSystemLogoutcirclerline,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillRed,
          ),
          SizedBox(height: 32.v),
        ],
      ),
    );
  }
}
