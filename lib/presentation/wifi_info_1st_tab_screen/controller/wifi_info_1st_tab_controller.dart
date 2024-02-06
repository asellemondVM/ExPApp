import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_info_1st_tab_screen/models/wifi_info_1st_tab_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WifiInfo1stTabScreen.
///
/// This class manages the state of the WifiInfo1stTabScreen, including the
/// current wifiInfo1stTabModelObj
class WifiInfo1stTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController wiFiController = TextEditingController();

  Rx<WifiInfo1stTabModel> wifiInfo1stTabModelObj = WifiInfo1stTabModel().obs;
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onClose() {
    super.onClose();
    wiFiController.dispose();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}
