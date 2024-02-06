import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:enexpet/widgets/custom_outlined_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../wifi_info_2nd_tab_screen/widgets/availablepagelist_item_widget.dart';
import 'controller/wifi_info_2nd_tab_controller.dart';
import 'models/availablepagelist_item_model.dart';

class WifiInfo2ndTabScreen extends GetWidget<WifiInfo2ndTabController> {
  const WifiInfo2ndTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          _buildFortyColumn(
              chipId: "lbl_uptime".tr, label: "lbl_14_mins_18_secs".tr),
          _buildFortyColumn(chipId: "lbl_chip_id".tr, label: "lbl_8ce22748".tr),
          _buildFortyColumn(chipId: "lbl_chip_rev".tr, label: "lbl_0".tr),
          _buildFortyColumn(
              chipId: "lbl_flash_size".tr, label: "lbl_4194304_bytes".tr),
          _buildFortyColumn(
              chipId: "lbl_psram_size".tr, label: "lbl_0_bytes".tr),
          _buildFortyColumn(
              chipId: "lbl_cpu_frequency".tr, label: "lbl_240_mhz".tr),
          _buildFortyColumn(
              chipId: "msg_memory_free_heap".tr,
              label: "msg_127184_bytes_available".tr),
          _buildFortyColumn(
              chipId: "lbl_temperature".tr, label: "msg_36_20_c_122_76".tr),
          SizedBox(height: 20.v),
          Container(
            margin: EdgeInsets.only(left: 18),
            child: Column(
              children: [
                _buildUpdateButton(),
                SizedBox(height: 15.v),
                _buildEraseWifiConfigButton()
              ],
            ),
          )
        ]),
      ),
    );
  }

  /// Common widget
  Widget _buildFortyColumn({
    required String chipId,
    required String label,
  }) {
    return Container(
        width: 350.h,
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(chipId,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.black900)),
              SizedBox(height: 6.v),
              Text(label,
                  style: CustomTextStyles.bodySmallErrorContainer
                      .copyWith(color: theme.colorScheme.errorContainer))
            ]));
  }

  /// Section Widget
  Widget _buildEsp32Button() {
    return CustomElevatedButton(
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
          onTapEsp32Button();
        });
  }

  /// Section Widget
  Widget _buildWifiButton() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
            width: 110.h,
            controller: controller.wifiButtonController,
            hintText: "lbl_wifi".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 10.v, 4.h, 10.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdownWhiteA700,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 40.v),
            contentPadding: EdgeInsets.only(top: 9.v, right: 30.h, bottom: 9.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL4,
            fillColor: theme.colorScheme.primary));
  }

  /// Section Widget
  Widget _buildEsp32Row() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          _buildEsp32Button(),
          _buildWifiButton(),
          Container(
              width: 130.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(vertical: 7.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgLineDocumentPagesLine,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 2.v)),
                Padding(
                    padding: EdgeInsets.only(left: 4.h, top: 2.v),
                    child: Text("lbl_available_pages".tr,
                        style: CustomTextStyles.bodyMedium_1))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildTwentySixColumn() {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Container(
            margin: EdgeInsets.only(right: 20.h, bottom: 254.v),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
            decoration: AppDecoration.outlineBlueGray,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("lbl_bssid".tr, style: theme.textTheme.titleSmall),
                  SizedBox(height: 8.v),
                  Text("msg_ac_27_e2_8c_65_28".tr,
                      style: CustomTextStyles.bodySmallErrorContainer),
                  SizedBox(height: 1.v)
                ])));
  }

  /// Section Widget
  Widget _buildAvailablePageList() {
    return Align(
        alignment: Alignment.center,
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 1.v);
            },
            itemCount: controller.wifiInfo2ndTabModelObj.value
                .availablepagelistItemList.value.length,
            itemBuilder: (context, index) {
              AvailablepagelistItemModel model = controller
                  .wifiInfo2ndTabModelObj
                  .value
                  .availablepagelistItemList
                  .value[index];
              return AvailablepagelistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildUpdateButton() {
    return CustomOutlinedButton(
        text: "lbl_update".tr,
        margin: EdgeInsets.only(right: 20.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLineSystemUploadcloud2linePrimary,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimary);
  }

  /// Section Widget
  Widget _buildEraseWifiConfigButton() {
    return CustomElevatedButton(
        text: "msg_erase_w_f_config".tr,
        margin: EdgeInsets.only(right: 20.h),
        buttonStyle: CustomButtonStyles.fillRed);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the wifiInfo1stTabScreen when the action is triggered.
  onTapEsp32Button() {
    Get.toNamed(
      AppRoutes.wifiInfo1stTabScreen,
    );
  }
}
