import '../controller/wifi_info_3rd_tab_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WifiInfo3rdTabScreen.
///
/// This class ensures that the WifiInfo3rdTabController is created when the
/// WifiInfo3rdTabScreen is first loaded.
class WifiInfo3rdTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WifiInfo3rdTabController());
  }
}
