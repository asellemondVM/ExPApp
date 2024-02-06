import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_measnode_page/models/measurement_measnode_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MeasurementMeasnodePage.
///
/// This class manages the state of the MeasurementMeasnodePage, including the
/// current measurementMeasnodeModelObj
class MeasurementMeasnodeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MeasurementMeasnodeController(this.measurementMeasnodeModelObj);

  Rx<MeasurementMeasnodeModel> measurementMeasnodeModelObj;

  Rx<int> sliderIndex = 0.obs;

  Rx<int> sliderIndex1 = 0.obs;

  Rx<int> sliderIndex2 = 0.obs;

  Rx<int> sliderIndex3 = 0.obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in measurementMeasnodeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    measurementMeasnodeModelObj.value.dropdownItemList.refresh();
  }

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
