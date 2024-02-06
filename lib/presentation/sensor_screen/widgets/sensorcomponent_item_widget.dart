import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_icon_button.dart';
import 'package:enexpet/widgets/custom_outlined_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../controller/sensor_controller.dart';
import '../models/sensorcomponent_item_model.dart';

// ignore: must_be_immutable
class SensorcomponentItemWidget extends StatelessWidget {
  SensorcomponentItemWidget(
    this.sensorcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SensorcomponentItemModel sensorcomponentItemModelObj;

  var controller = Get.find<SensorController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 20.v,
                    ),
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_measnode".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        CustomTextFormField(
                          controller:
                              sensorcomponentItemModelObj.labelController,
                          hintText: "lbl_overall".tr,
                          hintStyle: CustomTextStyles.bodySmallErrorContainer,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 11.v,
                          ),
                        ),
                        SizedBox(height: 96.v),
                        Row(
                          children: [
                            controller.isSelectedSwitch.value
                                ? Container(
                                    child: Row(
                                      children: [
                                        CustomOutlinedButton(
                                          height: 32.v,
                                          width: 61.h,
                                          text: "lbl_in1".tr,
                                          rightIcon: Container(
                                            margin: EdgeInsets.only(),
                                            child: CustomImageView(
                                              imagePath:
                                                  'assets/images/mesurement_nav.png',
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                            ),
                                          ),
                                          buttonTextStyle: CustomTextStyles
                                              .bodySmallDMSansOnPrimary,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: CustomIconButton(
                                            height: 32.adaptSize,
                                            width: 32.adaptSize,
                                            padding: EdgeInsets.all(4.h),
                                            child: CustomImageView(
                                              imagePath:
                                                  'assets/images/plus_icon.png',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                            controller.isSelectedSwitch1.value
                                ? Container(
                                    child: Row(
                                      children: [
                                        CustomOutlinedButton(
                                          height: 32.v,
                                          width: 61.h,
                                          text: "lbl_in2".tr,
                                          rightIcon: Container(
                                            margin: EdgeInsets.only(),
                                            child: CustomImageView(
                                              imagePath:
                                                  'assets/images/mesurement_nav.png',
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                            ),
                                          ),
                                          buttonTextStyle: CustomTextStyles
                                              .bodySmallDMSansOnPrimary,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: CustomIconButton(
                                            height: 32.adaptSize,
                                            width: 32.adaptSize,
                                            padding: EdgeInsets.all(4.h),
                                            child: CustomImageView(
                                              imagePath:
                                                  'assets/images/plus_icon.png',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                            controller.isSelectedSwitch2.value
                                ? Container(
                                    child: Row(
                                      children: [
                                        CustomOutlinedButton(
                                          height: 32.v,
                                          width: 61.h,
                                          text: "lbl_in3".tr,
                                          rightIcon: Container(
                                            margin: EdgeInsets.only(),
                                            child: CustomImageView(
                                              imagePath:
                                                  'assets/images/mesurement_nav.png',
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                            ),
                                          ),
                                          buttonTextStyle: CustomTextStyles
                                              .bodySmallDMSansOnPrimary,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: CustomIconButton(
                                            height: 32.adaptSize,
                                            width: 32.adaptSize,
                                            padding: EdgeInsets.all(4.h),
                                            child: CustomImageView(
                                              imagePath:
                                                  'assets/images/plus_icon.png',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                        SizedBox(height: 14.v),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
