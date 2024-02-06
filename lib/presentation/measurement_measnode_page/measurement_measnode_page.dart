import 'package:carousel_slider/carousel_slider.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../measurement_measnode_page/widgets/powerdashboardslider_item_widget.dart';
import '../measurement_measnode_page/widgets/powerusageslider1_item_widget.dart';
import '../measurement_measnode_page/widgets/powerusageslider2_item_widget.dart';
import '../measurement_measnode_page/widgets/powerusageslider_item_widget.dart';
import 'controller/measurement_measnode_controller.dart';
import 'models/measurement_measnode_model.dart';
import 'models/powerdashboardslider_item_model.dart';
import 'models/powerusageslider1_item_model.dart';
import 'models/powerusageslider2_item_model.dart';
import 'models/powerusageslider_item_model.dart';

class MeasurementMeasnodePage extends StatefulWidget {
  MeasurementMeasnodePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<MeasurementMeasnodePage> createState() =>
      _MeasurementMeasnodePageState();
}

class _MeasurementMeasnodePageState extends State<MeasurementMeasnodePage> {
  MeasurementMeasnodeController controller =
      Get.put(MeasurementMeasnodeController(MeasurementMeasnodeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildVectorRow(),
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 21.h),
                  child: Text("Measurement".tr,
                      style: CustomTextStyles.headlineLargeMontserrat),
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(),
              SizedBox(
                height: 20.v,
              ),
              Expanded(
                  child: TabBarView(
                controller: controller.tabviewController,
                children: [
                  buildInTab(),
                  buildMeasNodes(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInTab() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.v),
                  Text(
                    "Active Power".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 18.v),
                  _buildPowerDashboardSlider(),
                  SizedBox(height: 24.v),
                  Obx(
                    () => Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 128.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex.value,
                        count: controller.measurementMeasnodeModelObj.value
                            .powerdashboardsliderItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10004,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "Apparent Power".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 19.v),
                  _buildPowerUsageSlider(),
                  SizedBox(height: 24.v),
                  Obx(
                    () => Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 128.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex1.value,
                        count: controller.measurementMeasnodeModelObj.value
                            .powerusagesliderItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10004,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "Cos Phi".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 18.v),
                  _buildPowerUsageSlider1(),
                  SizedBox(height: 24.v),
                  Obx(
                    () => Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 128.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex2.value,
                        count: controller.measurementMeasnodeModelObj.value
                            .powerusageslider1ItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10004,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Text(
                    "Voltage".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 15.v),
                  _buildPowerUsageSlider2(),
                  SizedBox(height: 24.v),
                  Obx(
                    () => Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 128.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex3.value,
                        count: controller.measurementMeasnodeModelObj.value
                            .powerusageslider2ItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10004,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMeasNodes() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.h),
                    child: CustomDropDown(
                      icon: Icon(Icons.keyboard_arrow_down),
                      hintText: "lbl_measnodes".tr,
                      hintStyle: CustomTextStyles.titleSmall_1,
                      items: controller.measurementMeasnodeModelObj.value
                          .dropdownItemList!.value,
                      contentPadding: EdgeInsets.only(
                        left: 16.h,
                        top: 13.v,
                        bottom: 13.v,
                      ),
                      borderDecoration: DropDownStyleHelper.outlineBlack,
                      onChanged: (value) {
                        controller.onSelected(value);
                      },
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "lbl_overall".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 18.v),
                  _buildPowerDashboardSlider(),
                  SizedBox(height: 24.v),
                  Obx(
                    () => Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 128.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex.value,
                        count: controller.measurementMeasnodeModelObj.value
                            .powerdashboardsliderItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10004,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "lbl_kitchen".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 19.v),
                  _buildPowerUsageSlider(),
                  SizedBox(height: 24.v),
                  Obx(
                    () => Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 128.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex1.value,
                        count: controller.measurementMeasnodeModelObj.value
                            .powerusagesliderItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10004,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "lbl_sauna".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 18.v),
                  _buildPowerUsageSlider1(),
                  SizedBox(height: 24.v),
                  Obx(
                    () => Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 128.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex2.value,
                        count: controller.measurementMeasnodeModelObj.value
                            .powerusageslider1ItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10004,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Text(
                    "lbl_garage".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 15.v),
                  _buildPowerUsageSlider2(),
                  SizedBox(height: 24.v),
                  Obx(
                    () => Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 128.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex3.value,
                        count: controller.measurementMeasnodeModelObj.value
                            .powerusageslider2ItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10004,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabview() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 18.h),
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
                          imagePath: 'assets/images/mesurement_nav.png',
                          color: controller.tabviewController.index == 0
                              ? Colors.white
                              : Color(0xff002055),
                          height: 20.adaptSize,
                          width: 20.adaptSize),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "IN".tr,
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
                  margin: EdgeInsets.only(left: 10),
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
                          imagePath: 'assets/images/mesurement_nav.png',
                          color: controller.tabviewController.index == 1
                              ? Colors.white
                              : Color(0xff002055),
                          height: 20.adaptSize,
                          width: 20.adaptSize),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "MeasNode".tr,
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
            ]));
  }

  Widget _buildVectorRow() {
    return Container(
      margin: EdgeInsets.only(left: 17, right: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: 'assets/images/logo.png',
            height: 50.v,
            width: 150.h,
            fit: BoxFit.fitHeight,
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: 'assets/images/united-kingdom.png',
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Text('   EN'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPowerDashboardSlider() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 256.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 0.6,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount: controller.measurementMeasnodeModelObj.value
            .powerdashboardsliderItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          PowerdashboardsliderItemModel model = controller
              .measurementMeasnodeModelObj
              .value
              .powerdashboardsliderItemList
              .value[index];
          return Container(
            margin: EdgeInsets.only(left: 10),
            child: PowerdashboardsliderItemWidget(
              model,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPowerUsageSlider() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 256.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 0.6,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex1.value = index;
          },
        ),
        itemCount: controller.measurementMeasnodeModelObj.value
            .powerusagesliderItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          PowerusagesliderItemModel model = controller
              .measurementMeasnodeModelObj
              .value
              .powerusagesliderItemList
              .value[index];
          return Container(
            margin: EdgeInsets.only(left: 10),
            child: PowerusagesliderItemWidget(
              model,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPowerUsageSlider1() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 256.v,
          initialPage: 0,
          autoPlay: false,
          viewportFraction: 0.6,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex2.value = index;
          },
        ),
        itemCount: controller.measurementMeasnodeModelObj.value
            .powerusageslider1ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Powerusageslider1ItemModel model = controller
              .measurementMeasnodeModelObj
              .value
              .powerusageslider1ItemList
              .value[index];
          return Container(
            margin: EdgeInsets.only(left: 10),
            child: Powerusageslider1ItemWidget(
              model,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPowerUsageSlider2() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 256.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 0.6,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex3.value = index;
          },
        ),
        itemCount: controller.measurementMeasnodeModelObj.value
            .powerusageslider2ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Powerusageslider2ItemModel model = controller
              .measurementMeasnodeModelObj
              .value
              .powerusageslider2ItemList
              .value[index];
          return Container(
            margin: EdgeInsets.only(left: 10),
            child: Powerusageslider2ItemWidget(
              model,
            ),
          );
        },
      ),
    );
  }
}
