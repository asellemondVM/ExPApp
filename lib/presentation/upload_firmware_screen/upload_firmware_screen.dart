import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/app_bar/appbar_title.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/upload_firmware_controller.dart';

class UploadFirmwareScreen extends GetWidget<UploadFirmwareController> {
  const UploadFirmwareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 29.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_wifi_manager".tr,
                            style: CustomTextStyles.headlineLargeMontserrat),
                        SizedBox(height: 3.v),
                        Text("lbl_exp_2b2_t_00005".tr,
                            style: CustomTextStyles.titleLarge_1),
                        SizedBox(height: 19.v),
                        _buildAlerts(),
                        SizedBox(height: 24.v),
                        CustomImageView(
                            imagePath: 'assets/images/upload_firmware.png',
                            height: 212.v,
                            width: 212.h,
                            alignment: Alignment.center),
                        SizedBox(height: 20.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: 'assets/images/upload_firmware.png',
                              color: Colors.blueAccent,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text("msg_upload_new_firmware".tr,
                                  style: CustomTextStyles.titleMedium_1))
                        ]),
                        SizedBox(height: 25.v),
                        Container(
                            width: 330.h,
                            margin: EdgeInsets.only(left: 4.h, right: 15.h),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallErrorContainer
                                    .copyWith(height: 2.00))),
                        SizedBox(height: 2.v)
                      ])),
            ),
            bottomNavigationBar: _buildSelectFile()));
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
        title: AppbarTitle(text: "lbl_update".tr));
  }

  /// Section Widget
  Widget _buildAlerts() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 9.v),
        decoration: AppDecoration.outlineRed
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: 'assets/images/info_small.png',
                    height: 14.adaptSize,
                    width: 14.adaptSize),
                SizedBox(
                  width: 7,
                ),
                Text("lbl_nfo".tr, style: CustomTextStyles.labelLargeRed700),
                Spacer(),
                CustomImageView(
                    imagePath: 'assets/images/close.png',
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 8.v))
              ]),
              SizedBox(height: 16.v),
              GestureDetector(
                  onTap: () {
                    onTapTxtMaynotfunction();
                  },
                  child: Container(
                      width: 276.h,
                      margin: EdgeInsets.only(right: 41.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_may_not_function2".tr,
                                style: CustomTextStyles.bodySmallff00000012),
                            TextSpan(
                                text: "msg_http_192_168_4_1".tr,
                                style: CustomTextStyles.labelLargeff000000)
                          ]),
                          textAlign: TextAlign.left)))
            ]));
  }

  /// Section Widget
  Widget _buildSelectFile() {
    return CustomElevatedButton(
        text: "lbl_select_file".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 48.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: 'assets/images/upload_firmware.png',
                color: Colors.white,
                height: 24.adaptSize,
                width: 24.adaptSize)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  onTapTxtMaynotfunction() {
    // TODO: implement Actions
  }
}
