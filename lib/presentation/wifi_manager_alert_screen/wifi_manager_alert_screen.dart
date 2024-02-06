import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_manage_bottomsheet/controller/wifi_manage_controller.dart';
import 'package:enexpet/presentation/wifi_manage_bottomsheet/wifi_manage_bottomsheet.dart';
import 'package:enexpet/widgets/custom_bottom_bar.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/wifi_manager_alert_controller.dart';

class WifiManagerAlertScreen extends GetWidget<WifiManagerAlertController> {
  const WifiManagerAlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
        child: Column(
          children: [
            SizedBox(height: 20.v),
            _buildVectorRow(),
            SizedBox(height: 20.v),
            Container(
                height: 166.adaptSize,
                width: 166.adaptSize,
                decoration: AppDecoration.outline
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder83),
                child: CustomImageView(
                    imagePath: 'assets/images/wifi_image.png',
                    height: 166.adaptSize,
                    width: 166.adaptSize,
                    alignment: Alignment.center)),
            SizedBox(height: 17.v),
            Text("lbl_wifi_manager".tr,
                style: CustomTextStyles.headlineLargeMontserrat),
            SizedBox(height: 3.v),
            Text("lbl_exp_2b2_t_00005".tr,
                style: CustomTextStyles.titleLarge_1),
            SizedBox(height: 14.v),
            _buildAlerts(),
            SizedBox(height: 24.v),
            _buildConfigureWifiButton(),
            SizedBox(height: 16.v),
            _buildInfoButton(),
            SizedBox(height: 16.v),
            _buildExitButton(),
            SizedBox(height: 16.v),
            _buildUpdateButton(),
          ],
        ),
      ),
    ));
  }

  /// Section Widget

  Widget _buildVectorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: 'assets/images/logo.png',
          height: 50.v,
          width: 150.h,
          fit: BoxFit.fitHeight,
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: 'assets/images/united-kingdom.png',
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Text('   EN'),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAlerts() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: 'assets/images/connected_icon.png',
                    height: 20.adaptSize,
                    width: 20.adaptSize),
                SizedBox(
                  width: 6.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 4.h, left: 4.h, bottom: 3.v),
                  child: Text(
                    "lbl_connected".tr,
                    style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                        fontSize: 14),
                  ),
                ),
                Spacer(),
                CustomImageView(
                    imagePath: 'assets/images/close.png',
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 8.v))
              ]),
              SizedBox(height: 15.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_connected".tr,
                        style: CustomTextStyles.labelLargeff000000_1),
                    TextSpan(
                        text: "lbl_to".tr,
                        style: CustomTextStyles.bodySmallff000000),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_tp_link_9844".tr,
                        style: CustomTextStyles.labelLargeff000000_1),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_with".tr,
                        style: CustomTextStyles.bodySmallff000000),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "msg_ip_192_168_0_100".tr,
                        style: CustomTextStyles.labelLargeff000000_1)
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildConfigureWifiButton() {
    return CustomElevatedButton(
        text: "lbl_configure_wifi".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: 'assets/images/wifi_con_icone.png',
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapConfigureWifiButton();
        });
  }

  /// Section Widget
  Widget _buildInfoButton() {
    return CustomElevatedButton(
        text: "lbl_info".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: 'assets/images/info_icon.png',
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapInfoButton();
        });
  }

  /// Section Widget
  Widget _buildExitButton() {
    return CustomElevatedButton(
        text: "lbl_exit".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: 'assets/images/exit_icon.png',
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapExitButton();
        });
  }

  /// Section Widget
  Widget _buildUpdateButton() {
    return CustomElevatedButton(
        text: "lbl_update".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: 'assets/images/update_icon.png',
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.fillBlueGray,
        onPressed: () {
          onTapUpdateButton();
        });
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the wifiListScreen when the action is triggered.
  onTapConfigureWifiButton() {
    Get.toNamed(
      AppRoutes.wifiListScreen,
    );
  }

  /// Navigates to the wifiInfo1stTabScreen when the action is triggered.
  onTapInfoButton() {
    Get.toNamed(
      AppRoutes.wifiInfo1stTabScreen,
    );
  }

  onTapExitButton() {
    Get.bottomSheet(
      WifiManageBottomsheet(
        Get.put(
          WifiManageController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapUpdateButton() {
    // TODO: implement Actions
    Get.toNamed(AppRoutes.uploadFirmwareScreen);
  }
}
