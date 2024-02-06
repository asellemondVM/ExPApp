import '../controller/no_data_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoDataScreen.
///
/// This class ensures that the NoDataController is created when the
/// NoDataScreen is first loaded.
class NoDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoDataController());
  }
}
