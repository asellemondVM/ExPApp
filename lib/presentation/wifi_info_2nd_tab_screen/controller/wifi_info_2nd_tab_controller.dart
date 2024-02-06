import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_info_2nd_tab_screen/models/wifi_info_2nd_tab_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WifiInfo2ndTabScreen.
///
/// This class manages the state of the WifiInfo2ndTabScreen, including the
/// current wifiInfo2ndTabModelObj
class WifiInfo2ndTabController extends GetxController {
  TextEditingController wifiButtonController = TextEditingController();

  Rx<WifiInfo2ndTabModel> wifiInfo2ndTabModelObj = WifiInfo2ndTabModel().obs;

  @override
  void onClose() {
    super.onClose();
    wifiButtonController.dispose();
  }
}
