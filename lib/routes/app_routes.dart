import 'package:enexpet/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:enexpet/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:enexpet/presentation/bottom_navigation/bottom_nav.dart';
import 'package:enexpet/presentation/measurement_data_tab_container_screen/binding/measurement_data_tab_container_binding.dart';
import 'package:enexpet/presentation/measurement_data_tab_container_screen/measurement_data_tab_container_screen.dart';
import 'package:enexpet/presentation/no_data_screen/binding/no_data_binding.dart';
import 'package:enexpet/presentation/no_data_screen/no_data_screen.dart';
import 'package:enexpet/presentation/sensor_screen/binding/sensor_binding.dart';
import 'package:enexpet/presentation/sensor_screen/sensor_screen.dart';
import 'package:enexpet/presentation/splash_screen/splash_screen.dart';
import 'package:enexpet/presentation/upload_firmware_screen/binding/upload_firmware_binding.dart';
import 'package:enexpet/presentation/upload_firmware_screen/upload_firmware_screen.dart';
import 'package:enexpet/presentation/wifi_info_1st_tab_screen/binding/wifi_info_1st_tab_binding.dart';
import 'package:enexpet/presentation/wifi_info_1st_tab_screen/wifi_info_1st_tab_screen.dart';
import 'package:enexpet/presentation/wifi_info_2nd_tab_screen/binding/wifi_info_2nd_tab_binding.dart';
import 'package:enexpet/presentation/wifi_info_2nd_tab_screen/wifi_info_2nd_tab_screen.dart';
import 'package:enexpet/presentation/wifi_info_3rd_tab_screen/binding/wifi_info_3rd_tab_binding.dart';
import 'package:enexpet/presentation/wifi_info_3rd_tab_screen/wifi_info_3rd_tab_screen.dart';
import 'package:enexpet/presentation/wifi_list_screen/binding/wifi_list_binding.dart';
import 'package:enexpet/presentation/wifi_list_screen/wifi_list_screen.dart';
import 'package:enexpet/presentation/wifi_manager_alert_screen/binding/wifi_manager_alert_binding.dart';
import 'package:enexpet/presentation/wifi_manager_alert_screen/wifi_manager_alert_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String wifiManagerAlertScreen = '/wifi_manager_alert_screen';

  static const String wifiListScreen = '/wifi_list_screen';
  static const String bottomNavigationScreen = '/bottom_navigation';
  static const String splashScreen = '/splash_screen';
  static const String wifiInfo1stTabScreen = '/wifi_info_1st_tab_screen';

  static const String wifiInfo2ndTabScreen = '/wifi_info_2nd_tab_screen';

  static const String wifiInfo3rdTabScreen = '/wifi_info_3rd_tab_screen';

  static const String uploadFirmwareScreen = '/upload_firmware_screen';

  static const String sensorScreen = '/sensor_screen';

  static const String measurementMeasnodePage = '/measurement_measnode_page';

  static const String measnodePage = '/measnode_page';

  static const String measurementDataTabContainerScreen =
      '/measurement_data_tab_container_screen';

  static const String noDataScreen = '/no_data_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: wifiManagerAlertScreen,
      page: () => WifiManagerAlertScreen(),
      bindings: [
        WifiManagerAlertBinding(),
      ],
    ),
    GetPage(
      name: wifiListScreen,
      page: () => WifiListScreen(),
      bindings: [
        WifiListBinding(),
      ],
    ),
    GetPage(
      name: wifiInfo1stTabScreen,
      page: () => WifiInfo1stTabScreen(),
      bindings: [
        WifiInfo1stTabBinding(),
      ],
    ),
    GetPage(
      name: wifiInfo2ndTabScreen,
      page: () => WifiInfo2ndTabScreen(),
      bindings: [
        WifiInfo2ndTabBinding(),
      ],
    ),
    GetPage(
      name: wifiInfo3rdTabScreen,
      page: () => WifiInfo3rdTabScreen(),
      bindings: [
        WifiInfo3rdTabBinding(),
      ],
    ),
    GetPage(
      name: uploadFirmwareScreen,
      page: () => UploadFirmwareScreen(),
      bindings: [
        UploadFirmwareBinding(),
      ],
    ),
    GetPage(
      name: sensorScreen,
      page: () => SensorScreen(),
      bindings: [
        SensorBinding(),
      ],
    ),
    GetPage(
      name: measurementDataTabContainerScreen,
      page: () => MeasurementDataTabContainerScreen(),
      bindings: [
        MeasurementDataTabContainerBinding(),
      ],
    ),
    GetPage(
      name: bottomNavigationScreen,
      page: () => BottomNav(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: noDataScreen,
      page: () => NoDataScreen(),
      bindings: [
        NoDataBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: wifiManagerAlertScreen,
      page: () => WifiManagerAlertScreen(),
      bindings: [
        WifiManagerAlertBinding(),
      ],
    )
  ];
}
