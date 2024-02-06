import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/upload_firmware_screen/models/upload_firmware_model.dart';

/// A controller class for the UploadFirmwareScreen.
///
/// This class manages the state of the UploadFirmwareScreen, including the
/// current uploadFirmwareModelObj
class UploadFirmwareController extends GetxController {
  Rx<UploadFirmwareModel> uploadFirmwareModelObj = UploadFirmwareModel().obs;
}
