import '../controller/sensor_controller.dart';
import '../models/radiooption1_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Radiooption1ItemWidget extends StatelessWidget {
  Radiooption1ItemWidget(
    this.radiooption1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Radiooption1ItemModel radiooption1ItemModelObj;

  var controller = Get.find<SensorController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_clamp".tr,
          style: CustomTextStyles.bodySmallRegular,
        ),
        SizedBox(height: 8.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_50ma".tr,
            value: "lbl_50ma".tr,
            groupValue: radiooption1ItemModelObj.radioGroup!.value,
            onChange: (value) {
              radiooption1ItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_100ma".tr,
            value: "lbl_100ma".tr,
            groupValue: radiooption1ItemModelObj.radioGroup1!.value,
            onChange: (value) {
              radiooption1ItemModelObj.radioGroup1!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_300ma".tr,
            value: "lbl_300ma".tr,
            groupValue: radiooption1ItemModelObj.radioGroup2!.value,
            onChange: (value) {
              radiooption1ItemModelObj.radioGroup2!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
