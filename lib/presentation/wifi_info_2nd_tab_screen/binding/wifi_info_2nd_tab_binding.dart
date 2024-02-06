import '../controller/wifi_info_2nd_tab_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WifiInfo2ndTabScreen.
///
/// This class ensures that the WifiInfo2ndTabController is created when the
/// WifiInfo2ndTabScreen is first loaded.
class WifiInfo2ndTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WifiInfo2ndTabController());
  }
}
