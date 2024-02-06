import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_tab_container_screen/models/measurement_data_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MeasurementDataTabContainerScreen.
///
/// This class manages the state of the MeasurementDataTabContainerScreen, including the
/// current measurementDataTabContainerModelObj
class MeasurementDataTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MeasurementDataTabContainerModel> measurementDataTabContainerModelObj =
      MeasurementDataTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 6));

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in measurementDataTabContainerModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    measurementDataTabContainerModelObj.value.dropdownItemList.refresh();
  }
}
