import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/app_bar/appbar_title.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../wifi_info_2nd_tab_screen/wifi_info_2nd_tab_screen.dart';
import '../wifi_info_3rd_tab_screen/wifi_info_3rd_tab_screen.dart';
import 'controller/wifi_info_1st_tab_controller.dart';

class WifiInfo1stTabScreen extends StatefulWidget {
  const WifiInfo1stTabScreen({Key? key}) : super(key: key);

  @override
  State<WifiInfo1stTabScreen> createState() => _WifiInfo1stTabScreenState();
}

class _WifiInfo1stTabScreenState extends State<WifiInfo1stTabScreen> {
  final controller = Get.put(WifiInfo1stTabController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 28.v),
          child: Column(
            children: [
              _buildTabview(),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: TabBarView(
                controller: controller.tabviewController,
                children: [
                  wifi1stTabScreen(),
                  WifiInfo2ndTabScreen(),
                  WifiInfo3rdTabScreen(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Padding wifi1stTabScreen() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          _buildFortyColumn(
              chipId: "lbl_uptime".tr, label: "lbl_14_mins_18_secs".tr),
          _buildFortyColumn(chipId: "lbl_chip_id".tr, label: "lbl_8ce22748".tr),
          _buildFortyColumn(chipId: "lbl_chip_rev".tr, label: "lbl_0".tr),
          _buildFortyColumn(
              chipId: "lbl_flash_size".tr, label: "lbl_4194304_bytes".tr),
          _buildFortyColumn(
              chipId: "lbl_psram_size".tr, label: "lbl_0_bytes".tr),
          _buildFortyColumn(
              chipId: "lbl_cpu_frequency".tr, label: "lbl_240_mhz".tr),
          _buildFortyColumn(
              chipId: "msg_memory_free_heap".tr,
              label: "msg_127184_bytes_available".tr),
          _buildMemorySketchRow(),
          _buildFortyColumn(
              chipId: "lbl_temperature".tr, label: "msg_36_20_c_122_76".tr)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        // height: 50.v,
        width: 326.h,
        child: TabBar(
            onTap: (index) {
              setState(() {});
            },
            indicatorColor: null, // Set to null to remove the underline
            indicatorWeight: 0.0, // Set to 0.0 to remove the underline
            labelPadding: EdgeInsets.zero,
            indicatorSize:
                TabBarIndicatorSize.label, // or TabBarIndicatorSize.tab
            indicatorPadding: EdgeInsets.symmetric(
                horizontal: 16.0), // Adjust the horizontal space between tabs
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.white, width: 0.0),
            ),
            controller: controller.tabviewController,
            labelColor: theme.colorScheme.primaryContainer.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.whiteA700,
            unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            tabs: [
              Tab(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.v),
                  decoration: controller.tabviewController.index == 0
                      ? BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        )
                      : BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: 'assets/images/esp.png',
                          color: controller.tabviewController.index == 0
                              ? Colors.white
                              : Color(0xff002055),
                          height: 20.adaptSize,
                          width: 20.adaptSize),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "Esp 32".tr,
                          style: TextStyle(
                            color: controller.tabviewController.index == 0
                                ? Colors.white
                                : Color(0xff002055),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  margin: EdgeInsets.only(right: 5, left: 5),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.v),
                  decoration: controller.tabviewController.index == 1
                      ? BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        )
                      : BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: 'assets/images/wifi_con_icone.png',
                          color: controller.tabviewController.index == 1
                              ? Colors.white
                              : Color(0xff002055),
                          height: 20.adaptSize,
                          width: 20.adaptSize),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "Wifi".tr,
                          style: TextStyle(
                            color: controller.tabviewController.index == 1
                                ? Colors.white
                                : Color(0xff002055),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.v),
                  decoration: controller.tabviewController.index == 2
                      ? BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        )
                      : BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: 'assets/images/available_page.png',
                          color: controller.tabviewController.index == 2
                              ? Colors.white
                              : Color(0xff002055),
                          height: 20.adaptSize,
                          width: 20.adaptSize),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "Pages".tr,
                          style: TextStyle(
                            color: controller.tabviewController.index == 2
                                ? Colors.white
                                : Color(0xff002055),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: EdgeInsets.only(
              top: 10.h,
              left: 7.h,
            ),
            child: CustomImageView(
              imagePath: 'assets/images/back_arrow.png',
              height: 40.h,
              width: 40.h,
            ),
          ),
        ),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_info".tr));
  }

  /// Section Widget
  Widget _buildEsp32Row() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CustomElevatedButton(
                  height: 40.v,
                  width: 110.h,
                  text: "lbl_esp_32".tr,
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLineDeviceCpuline,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  buttonStyle: CustomButtonStyles.outlineBlack,
                  buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomTextFormField(
                      width: 110.h,
                      controller: controller.wiFiController,
                      hintText: "lbl_wifi".tr,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 10.v, 4.h, 10.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownBlack900,
                              height: 20.adaptSize,
                              width: 20.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 40.v),
                      contentPadding:
                          EdgeInsets.only(top: 9.v, right: 30.h, bottom: 9.v),
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                      fillColor: appTheme.whiteA700)),
              Container(
                  width: 130.h,
                  margin: EdgeInsets.only(left: 10.h),
                  padding: EdgeInsets.symmetric(vertical: 7.v),
                  decoration: AppDecoration.outlineBlack
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLineDocumentPagesLine,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 2.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h, top: 2.v),
                        child: Text("lbl_available_pages".tr,
                            style: CustomTextStyles.bodyMedium_1))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildMemorySketchRow() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_memory_sketch".tr, style: theme.textTheme.titleSmall),
            SizedBox(height: 6.v),
            Text("msg_used_total_bytes".tr,
                style: CustomTextStyles.bodySmallErrorContainer)
          ]),
          Padding(
              padding: EdgeInsets.only(top: 14.v, bottom: 3.v),
              child: Column(children: [
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_1223536".tr,
                          style: CustomTextStyles.bodySmallff0099ff),
                      TextSpan(
                          text: "lbl_2534256".tr,
                          style: CustomTextStyles.bodySmallff000000Regular)
                    ]),
                    textAlign: TextAlign.left),
                SizedBox(height: 5.v),
                Container(
                    height: 8.v,
                    width: 162.h,
                    decoration: BoxDecoration(
                        color: appTheme.gray50,
                        borderRadius: BorderRadius.circular(4.h),
                        border: Border.all(
                            color: appTheme.blueGray10003, width: 1.h)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.h),
                        child: LinearProgressIndicator(
                            value: 0.63,
                            backgroundColor: appTheme.gray50,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary))))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildFortyColumn({
    required String chipId,
    required String label,
  }) {
    return Container(
        width: 350.h,
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(chipId,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.black900)),
              SizedBox(height: 6.v),
              Text(label,
                  style: CustomTextStyles.bodySmallErrorContainer
                      .copyWith(color: theme.colorScheme.errorContainer))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
