import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measnode_page/models/measnode_model.dart';

/// A controller class for the MeasnodePage.
///
/// This class manages the state of the MeasnodePage, including the
/// current measnodeModelObj
class MeasnodeController extends GetxController {
  MeasnodeController(this.measnodeModelObj);

  Rx<MeasnodeModel> measnodeModelObj;

  Rx<bool> clamp = false.obs;

  Rx<bool> clamp1 = false.obs;

  Rx<bool> clamp2 = false.obs;

  Rx<bool> clamp3 = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element in measnodeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    measnodeModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in measnodeModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    measnodeModelObj.value.dropdownItemList1.refresh();
  }
}
