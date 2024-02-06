import '../controller/wifi_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WifiListScreen.
///
/// This class ensures that the WifiListController is created when the
/// WifiListScreen is first loaded.
class WifiListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WifiListController());
  }
}
