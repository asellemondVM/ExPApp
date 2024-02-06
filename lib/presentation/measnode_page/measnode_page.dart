import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

import '../measnode_page/widgets/tag_item_widget.dart';
import 'controller/measnode_controller.dart';
import 'models/measnode_model.dart';
import 'models/tag_item_model.dart';

class MeasnodePage extends StatelessWidget {
  MeasnodePage({Key? key})
      : super(
          key: key,
        );

  MeasnodeController controller =
      Get.put(MeasnodeController(MeasnodeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 64.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildVectorRow(),
                        SizedBox(height: 35.v),
                        Text(
                          "lbl_measnodes".tr,
                          style: CustomTextStyles.headlineLargeMontserrat,
                        ),
                        SizedBox(height: 23.v),
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.only(right: 10),
                            // margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                            child: Icon(Icons.keyboard_arrow_down_outlined),
                          ),
                          hintText: "lbl_measnodes".tr,
                          hintStyle: CustomTextStyles.titleSmall_1,
                          items: controller
                              .measnodeModelObj.value.dropdownItemList1!.value,
                          contentPadding: EdgeInsets.only(
                            left: 16.h,
                            top: 13.v,
                            bottom: 13.v,
                          ),
                          borderDecoration: DropDownStyleHelper.outlineBlack,
                          onChanged: (value) {
                            controller.onSelected1(value);
                          },
                        ),
                        SizedBox(height: 17.v),
                        Text(
                          "lbl_overall".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 18.v),
                        _buildInColumn(),
                        SizedBox(height: 16.v),
                        _buildInTagGrid(),
                        SizedBox(height: 16.v),
                        Text(
                          "lbl_kitchen".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 19.v),
                        _buildInColumn1(),
                        SizedBox(height: 30.v),
                        Text(
                          "lbl_sauna".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 18.v),
                        _buildInColumn2(),
                        SizedBox(height: 20.v),
                        Text(
                          "lbl_garage".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 15.v),
                        _buildIN(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
  Widget _buildInColumn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBluegray100031.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_in".tr,
                  style: CustomTextStyles.titleLargePrimary,
                ),
                CustomImageView(
                  imagePath: 'assets/images/arrow_forward.png',
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    // top: 2.v,
                    // bottom: 5.v,
                  ),
                ),
                Text(
                  "lbl_clamp".tr,
                  style: CustomTextStyles.titleLargePrimary,
                ),
                Spacer(),
                CustomImageView(
                  imagePath: 'assets/images/menu_button.png',
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    // top: 2.v,
                    // bottom: 5.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 4.h,
            ),
            child: _buildKitchenRow(
              text1: "lbl_in1".tr,
              text2: "lbl_in2".tr,
              text3: "lbl_in3".tr,
              text4: "lbl_in4".tr,
              text5: "lbl_in5".tr,
              text6: "lbl_in6".tr,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: _buildWidgetRow(),
          ),
          SizedBox(height: 11.v),
          _buildFiftyRow(
            textValue1: "lbl_50".tr,
            textValue2: "lbl_ma".tr,
            textValue3: "lbl_100".tr,
            textValue4: "lbl_ma".tr,
            textValue5: "lbl_300".tr,
            textValue6: "lbl_ma".tr,
            textValue7: "lbl_50".tr,
            textValue8: "lbl_ma".tr,
            textValue9: "lbl_100".tr,
            textValue10: "lbl_ma".tr,
            textValue11: "lbl_300".tr,
            textValue12: "lbl_ma".tr,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInTagGrid() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBluegray100031.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: Text(
                    "lbl_in".tr,
                    style: CustomTextStyles.bodyMediumPrimary,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: 'assets/images/menu_button.png',
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    // top: 2.v,
                    // bottom: 5.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_in1_in2_in3_in4_in5_in6".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_clamp".tr,
              style: CustomTextStyles.bodyMediumPrimary,
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 25.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 8.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount:
                    controller.measnodeModelObj.value.tagItemList.value.length,
                itemBuilder: (context, index) {
                  TagItemModel model = controller
                      .measnodeModelObj.value.tagItemList.value[index];
                  return TagItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInColumn1() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBluegray100031.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_in".tr,
                  style: CustomTextStyles.titleLargePrimary,
                ),
                CustomImageView(
                  imagePath: 'assets/images/arrow_forward.png',
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    // top: 2.v,
                    // bottom: 5.v,
                  ),
                ),
                Text(
                  "lbl_clamp".tr,
                  style: CustomTextStyles.titleLargePrimary,
                ),
                Spacer(),
                CustomImageView(
                  imagePath: 'assets/images/menu_button.png',
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    // top: 2.v,
                    // bottom: 5.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 4.h,
            ),
            child: _buildKitchenRow(
              text1: "lbl_in1".tr,
              text2: "lbl_in2".tr,
              text3: "lbl_in3".tr,
              text4: "lbl_in4".tr,
              text5: "lbl_in5".tr,
              text6: "lbl_in6".tr,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: _buildWidgetRow(),
          ),
          SizedBox(height: 11.v),
          _buildFiftyRow(
            textValue1: "lbl_50".tr,
            textValue2: "lbl_ma".tr,
            textValue3: "lbl_100".tr,
            textValue4: "lbl_ma".tr,
            textValue5: "lbl_300".tr,
            textValue6: "lbl_ma".tr,
            textValue7: "lbl_50".tr,
            textValue8: "lbl_ma".tr,
            textValue9: "lbl_100".tr,
            textValue10: "lbl_ma".tr,
            textValue11: "lbl_300".tr,
            textValue12: "lbl_ma".tr,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInColumn2() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBluegray100031.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_in".tr,
                  style: CustomTextStyles.titleLargePrimary,
                ),
                CustomImageView(
                  imagePath: 'assets/images/arrow_forward.png',
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    // top: 2.v,
                    // bottom: 5.v,
                  ),
                ),
                Text(
                  "lbl_clamp".tr,
                  style: CustomTextStyles.titleLargePrimary,
                ),
                Spacer(),
                CustomImageView(
                  imagePath: 'assets/images/menu_button.png',
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    // top: 2.v,
                    // bottom: 5.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                Text(
                  "lbl_in2".tr,
                  style: theme.textTheme.titleLarge,
                ),
                CustomImageView(
                  imagePath: 'assets/images/plus_icon.png',
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_in4".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: 'assets/images/plus_icon.png',
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_in6".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 177.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: 'assets/images/down_arrow_grade.png',
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Spacer(
                  flex: 47,
                ),
                CustomImageView(
                  imagePath: 'assets/images/down_arrow_grade.png',
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Spacer(
                  flex: 52,
                ),
                CustomImageView(
                  imagePath: 'assets/images/down_arrow_grade.png',
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Text(
                "lbl_50".tr,
                style: CustomTextStyles.labelLarge_1,
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "lbl_ma".tr,
                  style: CustomTextStyles.bodySmallErrorContainer10,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Text(
                  "lbl_100".tr,
                  style: CustomTextStyles.labelLarge_1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "lbl_ma".tr,
                  style: CustomTextStyles.bodySmallErrorContainer10,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.h),
                child: Text(
                  "lbl_300".tr,
                  style: CustomTextStyles.labelLarge_1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "lbl_ma".tr,
                  style: CustomTextStyles.bodySmallErrorContainer10,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIN() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBluegray100031.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_in".tr,
                style: CustomTextStyles.titleLargePrimary,
              ),
              CustomImageView(
                imagePath: 'assets/images/arrow_forward.png',
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  // top: 2.v,
                  // bottom: 5.v,
                ),
              ),
              Text(
                "lbl_clamp".tr,
                style: CustomTextStyles.titleLargePrimary,
              ),
              Spacer(),
              CustomImageView(
                imagePath: 'assets/images/menu_button.png',
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  // top: 2.v,
                  // bottom: 5.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Row(
            children: [
              Text(
                "lbl_in5".tr,
                style: theme.textTheme.titleLarge,
              ),
              CustomImageView(
                imagePath: 'assets/images/plus_icon.png',
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_in2".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: 'assets/images/down_arrow_grade.png',
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                CustomImageView(
                  imagePath: 'assets/images/down_arrow_grade.png',
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 42.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Text(
                "lbl_50".tr,
                style: CustomTextStyles.labelLarge_1,
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "lbl_ma".tr,
                  style: CustomTextStyles.bodySmallErrorContainer10,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.h),
                child: Text(
                  "lbl_100".tr,
                  style: CustomTextStyles.labelLarge_1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "lbl_ma".tr,
                  style: CustomTextStyles.bodySmallErrorContainer10,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildKitchenRow({
    required String text1,
    required String text2,
    required String text3,
    required String text4,
    required String text5,
    required String text6,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        CustomImageView(
          imagePath: 'assets/images/plus_icon.png',
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 1.h,
            top: 3.v,
            bottom: 3.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            text2,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: 'assets/images/plus_icon.png',
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 1.h,
            top: 4.v,
            bottom: 2.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            text3,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: 'assets/images/minus_icon.png',
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 1.h,
            top: 4.v,
            bottom: 2.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            text4,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: 'assets/images/minus_icon.png',
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 1.h,
            top: 4.v,
            bottom: 2.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            text5,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: 'assets/images/minus_icon.png',
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 1.h,
            top: 4.v,
            bottom: 2.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            text6,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWidgetRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: CustomImageView(
            imagePath: 'assets/images/down_arrow_grade.png',
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(right: 19.h),
          ),
        ),
        Expanded(
          flex: 1,
          child: CustomImageView(
            imagePath: 'assets/images/down_arrow_grade.png',
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(horizontal: 19.h),
          ),
        ),
        Expanded(
          flex: 1,
          child: CustomImageView(
            imagePath: 'assets/images/down_arrow_grade.png',
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(horizontal: 19.h),
          ),
        ),
        Expanded(
          flex: 1,
          child: CustomImageView(
            imagePath: 'assets/images/down_arrow_grade.png',
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(horizontal: 19.h),
          ),
        ),
        Expanded(
          flex: 1,
          child: CustomImageView(
            imagePath: 'assets/images/down_arrow_grade.png',
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(horizontal: 19.h),
          ),
        ),
        Expanded(
          flex: 1,
          child: CustomImageView(
            imagePath: 'assets/images/down_arrow_grade.png',
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(left: 19.h),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFiftyRow({
    required String textValue1,
    required String textValue2,
    required String textValue3,
    required String textValue4,
    required String textValue5,
    required String textValue6,
    required String textValue7,
    required String textValue8,
    required String textValue9,
    required String textValue10,
    required String textValue11,
    required String textValue12,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textValue1,
          style: CustomTextStyles.labelLarge_1.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            textValue2,
            style: CustomTextStyles.bodySmallErrorContainer10.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(
            textValue3,
            style: CustomTextStyles.labelLarge_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            textValue4,
            style: CustomTextStyles.bodySmallErrorContainer10.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(
            textValue5,
            style: CustomTextStyles.labelLarge_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            textValue6,
            style: CustomTextStyles.bodySmallErrorContainer10.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 22.h),
          child: Text(
            textValue7,
            style: CustomTextStyles.labelLarge_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            textValue8,
            style: CustomTextStyles.bodySmallErrorContainer10.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            textValue9,
            style: CustomTextStyles.labelLarge_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            textValue10,
            style: CustomTextStyles.bodySmallErrorContainer10.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 21.h),
          child: Text(
            textValue11,
            style: CustomTextStyles.labelLarge_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            textValue12,
            style: CustomTextStyles.bodySmallErrorContainer10.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
      ],
    );
  }
}
