import '../controller/upload_firmware_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadFirmwareScreen.
///
/// This class ensures that the UploadFirmwareController is created when the
/// UploadFirmwareScreen is first loaded.
class UploadFirmwareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadFirmwareController());
  }
}
