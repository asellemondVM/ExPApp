import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_manager_alert_screen/models/wifi_manager_alert_model.dart';

/// A controller class for the WifiManagerAlertScreen.
///
/// This class manages the state of the WifiManagerAlertScreen, including the
/// current wifiManagerAlertModelObj
class WifiManagerAlertController extends GetxController {
  Rx<WifiManagerAlertModel> wifiManagerAlertModelObj =
      WifiManagerAlertModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in wifiManagerAlertModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    wifiManagerAlertModelObj.value.dropdownItemList.refresh();
  }
}
