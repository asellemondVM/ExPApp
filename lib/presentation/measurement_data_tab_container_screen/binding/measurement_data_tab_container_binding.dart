import '../controller/measurement_data_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MeasurementDataTabContainerScreen.
///
/// This class ensures that the MeasurementDataTabContainerController is created when the
/// MeasurementDataTabContainerScreen is first loaded.
class MeasurementDataTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MeasurementDataTabContainerController());
  }
}
