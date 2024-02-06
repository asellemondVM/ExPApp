import '../controller/wifi_info_2nd_tab_controller.dart';
import '../models/availablepagelist_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AvailablepagelistItemWidget extends StatelessWidget {
  AvailablepagelistItemWidget(
    this.availablepagelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AvailablepagelistItemModel availablepagelistItemModelObj;

  var controller = Get.find<WifiInfo2ndTabController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.fromLTRB(12.h, 6.v, 12.h, 5.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 167.h),
              child: Row(
                children: [
                  Obx(
                    () => Text(
                      availablepagelistItemModelObj.pageTitle!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 64.h),
                    child: Obx(
                      () => Text(
                        availablepagelistItemModelObj.functionTitle!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(right: 157.h),
              child: Row(
                children: [
                  Obx(
                    () => Text(
                      availablepagelistItemModelObj.slashText!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 92.h),
                    child: Obx(
                      () => Text(
                        availablepagelistItemModelObj.menuLabel!.value,
                        style: CustomTextStyles.bodySmallErrorContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
