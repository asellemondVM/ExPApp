import '../controller/wifi_manager_alert_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WifiManagerAlertScreen.
///
/// This class ensures that the WifiManagerAlertController is created when the
/// WifiManagerAlertScreen is first loaded.
class WifiManagerAlertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WifiManagerAlertController());
  }
}
