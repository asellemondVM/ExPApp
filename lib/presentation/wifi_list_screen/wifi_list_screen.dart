import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/core/utils/validation_functions.dart';
import 'package:enexpet/widgets/app_bar/appbar_title.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_checkbox_button.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:enexpet/widgets/custom_outlined_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/wifi_list_controller.dart';

// ignore_for_file: must_be_immutable
class WifiListScreen extends GetWidget<WifiListController> {
  WifiListScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 31.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return _buildThirtySeven(
                              fillDeviceSigImage:
                                  'assets/images/wifi_signal_icon.png',
                              text: "msg_fritz_box_5490_ql".tr,
                              lineSystemLockUnlockImage:
                                  'assets/images/lock_icon.png');
                        }),
                    SizedBox(height: 37.v),
                    Text("lbl_ssid".tr, style: theme.textTheme.bodyMedium),
                    SizedBox(height: 5.v),
                    _buildWifiNetwork(),
                    SizedBox(height: 29.v),
                    Text("lbl_password".tr, style: theme.textTheme.bodyMedium),
                    SizedBox(height: 5.v),
                    _buildPassword(),
                    SizedBox(height: 28.v),
                    _buildShowPassword(),
                    SizedBox(height: 51.v),
                    _buildRefresh(),
                    SizedBox(height: 15.v),
                    _buildSave(),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: EdgeInsets.only(
              top: 10.h,
              left: 7.h,
            ),
            child: CustomImageView(
              imagePath: 'assets/images/back_arrow.png',
              height: 40.h,
              width: 40.h,
            ),
          ),
        ),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_configure_wifi".tr));
  }

  /// Section Widget
  Widget _buildWifiNetwork() {
    return CustomTextFormField(
        controller: controller.wifiNetworkController,
        hintText: "lbl_tp_link_9844".tr,
        hintStyle: CustomTextStyles.bodySmallErrorContainer);
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl".tr,
        hintStyle: CustomTextStyles.bodySmallErrorContainer,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildShowPassword() {
    return Obx(() => CustomCheckboxButton(
        text: "lbl_show_password".tr,
        value: controller.showPassword.value,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        textStyle: CustomTextStyles.bodySmallRegular,
        onChange: (value) {
          controller.showPassword.value = value;
        }));
  }

  /// Section Widget
  Widget _buildRefresh() {
    return CustomOutlinedButton(
        text: "lbl_refresh".tr,
        height: 50.h,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: 'assets/images/refresh_icon.png',
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimary);
  }

  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
      text: "lbl_save".tr,
      height: 50.h,
    );
  }

  /// Common widget
  Widget _buildThirtySeven({
    required String fillDeviceSigImage,
    required String text,
    required String lineSystemLockUnlockImage,
  }) {
    return Container(
        padding: EdgeInsets.fromLTRB(12.h, 8.v, 12.h, 7.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Row(children: [
          SizedBox(
              height: 40.adaptSize,
              width: 40.adaptSize,
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: fillDeviceSigImage,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    alignment: Alignment.center)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 6.v, bottom: 4.v),
              child: Text(text,
                  style: CustomTextStyles.bodyMedium_1
                      .copyWith(color: appTheme.black900))),
          Spacer(),
          CustomImageView(
              imagePath: lineSystemLockUnlockImage,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
