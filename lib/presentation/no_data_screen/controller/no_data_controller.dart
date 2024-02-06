import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/no_data_screen/models/no_data_model.dart';

/// A controller class for the NoDataScreen.
///
/// This class manages the state of the NoDataScreen, including the
/// current noDataModelObj
class NoDataController extends GetxController {
  Rx<NoDataModel> noDataModelObj = NoDataModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in noDataModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    noDataModelObj.value.dropdownItemList.refresh();
  }
}
