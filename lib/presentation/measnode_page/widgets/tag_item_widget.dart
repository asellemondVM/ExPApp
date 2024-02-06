import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

import '../controller/measnode_controller.dart';
import '../models/tag_item_model.dart';

// ignore: must_be_immutable
class TagItemWidget extends StatelessWidget {
  TagItemWidget(
    this.tagItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TagItemModel tagItemModelObj;

  var controller = Get.find<MeasnodeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBluegray100032.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Obx(
              () => Text(
                tagItemModelObj.inVar!.value,
                style: CustomTextStyles.bodySmallDMSansOnPrimary,
              ),
            ),
          ),
          CustomImageView(
            imagePath: 'assets/images/arrow_forward.png',
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 1.v,
              bottom: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Obx(
              () => Text(
                tagItemModelObj.count!.value,
                style: CustomTextStyles.labelLarge_1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 1.v,
              bottom: 1.v,
            ),
            child: Obx(
              () => Text(
                tagItemModelObj.unit!.value,
                style: CustomTextStyles.bodySmallErrorContainer10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
