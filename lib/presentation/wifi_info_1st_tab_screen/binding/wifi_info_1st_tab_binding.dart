import '../controller/wifi_info_1st_tab_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WifiInfo1stTabScreen.
///
/// This class ensures that the WifiInfo1stTabController is created when the
/// WifiInfo1stTabScreen is first loaded.
class WifiInfo1stTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WifiInfo1stTabController());
  }
}
