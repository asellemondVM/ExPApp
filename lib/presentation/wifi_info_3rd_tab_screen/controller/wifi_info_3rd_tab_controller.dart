import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_info_3rd_tab_screen/models/wifi_info_3rd_tab_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WifiInfo3rdTabScreen.
///
/// This class manages the state of the WifiInfo3rdTabScreen, including the
/// current wifiInfo3rdTabModelObj
class WifiInfo3rdTabController extends GetxController {
  TextEditingController wifivalueController = TextEditingController();

  Rx<WifiInfo3rdTabModel> wifiInfo3rdTabModelObj = WifiInfo3rdTabModel().obs;

  @override
  void onClose() {
    super.onClose();
    wifivalueController.dispose();
  }
}
