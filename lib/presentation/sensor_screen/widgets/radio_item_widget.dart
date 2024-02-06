import '../controller/sensor_controller.dart';
import '../models/radio_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RadioItemWidget extends StatelessWidget {
  RadioItemWidget(
    this.radioItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RadioItemModel radioItemModelObj;

  var controller = Get.find<SensorController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_50ma".tr,
            value: "lbl_50ma".tr,
            groupValue: radioItemModelObj.radioGroup!.value,
            onChange: (value) {
              radioItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_100ma".tr,
            value: "lbl_100ma".tr,
            groupValue: radioItemModelObj.radioGroup1!.value,
            onChange: (value) {
              radioItemModelObj.radioGroup1!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_300ma".tr,
            value: "lbl_300ma".tr,
            groupValue: radioItemModelObj.radioGroup2!.value,
            onChange: (value) {
              radioItemModelObj.radioGroup2!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
