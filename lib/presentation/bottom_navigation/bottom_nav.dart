import 'package:enexpet/presentation/measnode_page/measnode_page.dart';
import 'package:enexpet/presentation/measurement_data_tab_container_screen/controller/measurement_data_tab_container_controller.dart';
import 'package:enexpet/presentation/measurement_measnode_page/measurement_measnode_page.dart';
import 'package:enexpet/presentation/sensor_screen/controller/sensor_controller.dart';
import 'package:enexpet/presentation/sensor_screen/sensor_screen.dart';
import 'package:enexpet/presentation/wifi_manager_alert_screen/wifi_manager_alert_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNav> {
  final _pages = [
    WifiManagerAlertScreen(),
    SensorScreen(),
    MeasurementMeasnodePage(),
    MeasnodePage(),
  ];

  @override
  void initState() {
    Get.put(SensorController());
    Get.put(MeasurementDataTabContainerController());
    // TODO: implement initState
    super.initState();
  }

  RxInt _selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFF3580FF),
        currentIndex: _selectedIndex.value,
        onTap: (index) {
          setState(() {
            _selectedIndex.value = index;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/wifi_nav.png',
              height: 28,
              width: 28,
            ),
            activeIcon: Image.asset(
              'assets/images/wifi_nav.png',
              color: Color(0xFF3580FF),
              height: 28,
              width: 28,
            ),
            label: "Wifi",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/sensore_nav.png',
              height: 28,
              width: 28,
            ),
            activeIcon: Image.asset(
              'assets/images/sensore_nav.png',
              height: 28,
              width: 28,
              color: Color(0xFF3580FF),
            ),
            label: "Sensor",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/mesurement_nav.png',
              height: 28,
              width: 28,
            ),
            activeIcon: Image.asset(
              'assets/images/mesurement_nav.png',
              height: 28,
              width: 28,
              color: Color(0xFF3580FF),
            ),
            label: "lbl_measurement".tr,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/measnode_nav.png',
              height: 28,
              width: 28,
            ),
            activeIcon: Image.asset(
              'assets/images/measnode_nav.png',
              height: 28,
              width: 28,
              color: Color(0xFF3580FF),
            ),
            label: "lbl_measnodes".tr,
          ),
        ],
      ),
      body: _pages[_selectedIndex.value],
    );
  }
}
