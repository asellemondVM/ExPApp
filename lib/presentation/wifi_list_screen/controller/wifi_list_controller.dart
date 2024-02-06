import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_list_screen/models/wifi_list_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WifiListScreen.
///
/// This class manages the state of the WifiListScreen, including the
/// current wifiListModelObj
class WifiListController extends GetxController {
  TextEditingController wifiNetworkController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<WifiListModel> wifiListModelObj = WifiListModel().obs;

  Rx<bool> showPassword = false.obs;

  @override
  void onClose() {
    super.onClose();
    wifiNetworkController.dispose();
    passwordController.dispose();
  }
}
