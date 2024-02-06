import 'controller/no_data_controller.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/app_bar/appbar_title_image.dart';
import 'package:enexpet/widgets/app_bar/appbar_trailing_dropdown.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_bottom_bar.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NoDataScreen extends GetWidget<NoDataController> {
  const NoDataScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 53.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: 186.h,
                child: Text(
                  "msg_there_is_no_data".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargeMontserrat,
                ),
              ),
              SizedBox(height: 9.v),
              CustomImageView(
                imagePath: ImageConstant.img1,
                height: 221.v,
                width: 193.h,
              ),
              SizedBox(height: 24.v),
              Container(
                width: 264.h,
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                child: Text(
                  "msg_lorem_ipsum_dolor3".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                    height: 2.00,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "lbl_sensor_config".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 3.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowleftWhiteA700,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        Obx(
          () => AppbarTrailingDropdown(
            margin: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 8.v,
            ),
            hintText: "lbl_de".tr,
            items: controller.noDataModelObj.value.dropdownItemList!.value,
            onTap: (value) {
              controller.onSelected(value);
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
