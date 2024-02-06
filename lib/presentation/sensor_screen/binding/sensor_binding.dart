import '../controller/sensor_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SensorScreen.
///
/// This class ensures that the SensorController is created when the
/// SensorScreen is first loaded.
class SensorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SensorController());
  }
}
