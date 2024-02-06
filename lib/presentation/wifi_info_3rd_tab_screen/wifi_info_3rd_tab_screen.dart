import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:enexpet/widgets/app_bar/appbar_title.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/wifi_info_3rd_tab_controller.dart';

class WifiInfo3rdTabScreen extends GetWidget<WifiInfo3rdTabController> {
  const WifiInfo3rdTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(children: [
                        _buildAvailablePageColumn(),
                        _buildAvailablePageRow(
                            dynamicText1: "lbl_wifi2".tr,
                            dynamicText2: "msg_lorem_ipsum_dolor".tr),
                        _buildAvailablePageRow(
                            dynamicText1: "lbl_wifisave".tr,
                            dynamicText2: "msg_lorem_ipsum_dolor".tr),
                        _buildAvailablePageRow(
                            dynamicText1: "lbl_param".tr,
                            dynamicText2: "msg_lorem_ipsum_dolor".tr),
                        _buildAvailablePageRow(
                            dynamicText1: "lbl_info2".tr,
                            dynamicText2: "msg_lorem_ipsum_dolor".tr),
                        _buildAvailablePageRow(
                            dynamicText1: "lbl_u".tr,
                            dynamicText2: "msg_lorem_ipsum_dolor".tr),
                        _buildAvailablePageRow(
                            dynamicText1: "lbl_close".tr,
                            dynamicText2: "msg_lorem_ipsum_dolor".tr),
                        _buildAvailablePageRow(
                            dynamicText1: "lbl_exit2".tr,
                            dynamicText2: "msg_lorem_ipsum_dolor".tr),
                        _buildAvailablePageRow(
                            dynamicText1: "lbl_restart".tr,
                            dynamicText2: "msg_lorem_ipsum_dolor".tr),
                        _buildAvailablePageRow(
                            dynamicText1: "lbl_erase".tr,
                            dynamicText2: "msg_lorem_ipsum_dolor".tr)
                      ]))
                ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_info".tr));
  }

  /// Section Widget
  Widget _buildEsp32Row() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CustomElevatedButton(
                  height: 40.v,
                  width: 110.h,
                  text: "lbl_esp_32".tr,
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLineDeviceCpulineBlack900,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  buttonStyle: CustomButtonStyles.outlineBlackTL4,
                  buttonTextStyle: CustomTextStyles.bodyMedium_1,
                  onPressed: () {
                    onTapEsp32();
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomTextFormField(
                      width: 110.h,
                      controller: controller.wifivalueController,
                      hintText: "lbl_wifi".tr,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 10.v, 4.h, 10.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownBlack900,
                              height: 20.adaptSize,
                              width: 20.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 40.v),
                      contentPadding:
                          EdgeInsets.only(top: 9.v, right: 30.h, bottom: 9.v),
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                      fillColor: appTheme.whiteA700)),
              Container(
                  width: 130.h,
                  margin: EdgeInsets.only(left: 10.h),
                  padding: EdgeInsets.symmetric(vertical: 7.v),
                  decoration: AppDecoration.outlineBlack900
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomImageView(
                        imagePath:
                            ImageConstant.imgLineDocumentPagesLineWhiteA700,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 2.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h, top: 2.v),
                        child: Text("lbl_available_pages".tr,
                            style: CustomTextStyles.bodyMediumWhiteA700))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildAvailablePageColumn() {
    return Container(
        width: 350.h,
        padding: EdgeInsets.fromLTRB(12.h, 7.v, 12.h, 6.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child:
                        Text("lbl_page".tr, style: theme.textTheme.titleSmall)),
                Padding(
                    padding: EdgeInsets.only(left: 64.h, bottom: 2.v),
                    child: Text("lbl_function".tr,
                        style: theme.textTheme.titleSmall))
              ]),
              SizedBox(height: 4.v),
              Row(children: [
                Text("lbl2".tr, style: theme.textTheme.titleSmall),
                Padding(
                    padding: EdgeInsets.only(left: 92.h, top: 3.v),
                    child: Text("lbl_menu_page".tr,
                        style: CustomTextStyles.bodySmallErrorContainer))
              ])
            ]));
  }

  /// Common widget
  Widget _buildAvailablePageRow({
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 31.v),
              child: Text(dynamicText1,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.black900))),
          Container(
              width: 210.h,
              margin: EdgeInsets.only(left: 37.h, top: 6.v),
              child: Text(dynamicText2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                      color: theme.colorScheme.errorContainer, height: 2.00)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the wifiInfo1stTabScreen when the action is triggered.
  onTapEsp32() {
    Get.toNamed(
      AppRoutes.wifiInfo1stTabScreen,
    );
  }
}
