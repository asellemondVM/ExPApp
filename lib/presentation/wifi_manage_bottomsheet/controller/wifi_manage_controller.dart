import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_manage_bottomsheet/models/wifi_manage_model.dart';

/// A controller class for the WifiManageBottomsheet.
///
/// This class manages the state of the WifiManageBottomsheet, including the
/// current wifiManageModelObj
class WifiManageController extends GetxController {
  Rx<WifiManageModel> wifiManageModelObj = WifiManageModel().obs;
}
