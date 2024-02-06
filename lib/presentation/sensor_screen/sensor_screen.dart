import 'package:carousel_slider/carousel_slider.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/sensor_screen/widgets/radiooption1_item_widget.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:enexpet/widgets/custom_switch.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../sensor_screen/widgets/sensorcomponent_item_widget.dart';
import 'controller/sensor_controller.dart';
import 'models/radiooption1_item_model.dart';
import 'models/sensorcomponent_item_model.dart';

class SensorScreen extends GetWidget<SensorController> {
  const SensorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            SizedBox(height: 64.v),
            Expanded(
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildVectorRow(),
                              SizedBox(height: 35.v),
                              Text("lbl_sensor".tr,
                                  style:
                                      CustomTextStyles.headlineLargeMontserrat),
                              SizedBox(height: 24.v),
                              _buildSensorInput(),
                              SizedBox(height: 29.v),
                              _buildClientInput(),
                              SizedBox(height: 29.v),
                              _buildPositionInput(),
                              SizedBox(height: 44.v),
                              _buildSaveButton(),
                              SizedBox(height: 29.v),
                              Text("lbl_sensor".tr,
                                  style: theme.textTheme.headlineSmall),
                              SizedBox(height: 26.v),
                              _buildFrameRow(),
                              SizedBox(height: 10.v),
                              _buildChooseCurrentRow(),
                              SizedBox(
                                height: 10,
                              ),
                              Obx(() {
                                return Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          controller.ns1IsClosed.value =
                                              !controller.ns1IsClosed.value;
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Icon(controller
                                                  .ns1IsClosed.value
                                              ? Icons.keyboard_arrow_up_outlined
                                              : Icons
                                                  .keyboard_arrow_down_outlined),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          controller.ns2IsClosed.value =
                                              !controller.ns2IsClosed.value;
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Icon(controller
                                                  .ns2IsClosed.value
                                              ? Icons.keyboard_arrow_up_outlined
                                              : Icons
                                                  .keyboard_arrow_down_outlined),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          controller.ns3IsClosed.value =
                                              !controller.ns3IsClosed.value;
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Icon(controller
                                                  .ns3IsClosed.value
                                              ? Icons.keyboard_arrow_up_outlined
                                              : Icons
                                                  .keyboard_arrow_down_outlined),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                              SizedBox(height: 10.v),
                              _buildLabelStack(),
                              SizedBox(height: 10.v),
                              _buildChooseCurrentRow(),
                              SizedBox(height: 10.v),
                              _buildFrameRow(),
                              SizedBox(height: 32.v),
                              _buildSaveButton1()
                            ]))))
          ])),
    ));
  }

  /// Section Widget
  Widget _buildVectorRow() {
    return Row(
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
    );
  }

  /// Section Widget
  Widget _buildSensorInput() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_sensor_number".tr, style: theme.textTheme.bodyMedium),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.labelController,
          hintText: "msg_expower_2b2_23100_0159".tr,
          hintStyle: CustomTextStyles.bodySmallErrorContainer)
    ]);
  }

  /// Section Widget
  Widget _buildClientInput() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_client_name".tr, style: theme.textTheme.bodyMedium),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.nameController,
          hintText: "lbl_enexpert".tr,
          hintStyle: CustomTextStyles.bodySmallErrorContainer)
    ]);
  }

  /// Section Widget
  Widget _buildPositionInput() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_position".tr, style: theme.textTheme.bodyMedium),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.labelController1,
          hintText: "lbl_lorem_psum".tr,
          hintStyle: CustomTextStyles.bodySmallErrorContainer)
    ]);
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(text: "lbl_save".tr);
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: GestureDetector(
              onTap: () {
                onTapIN3();
              },
              child: Container(
                  height: 50,
                  width: 110,
                  margin: EdgeInsets.only(left: 5.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
                  decoration: AppDecoration.outlineBlack
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_in1".tr, style: theme.textTheme.titleMedium),
                        Spacer(),
                        Obx(() => CustomSwitch(
                            height: 18,
                            width: 35,
                            value: controller.isSelectedSwitch.value,
                            onChange: (value) {
                              controller.isSelectedSwitch.value = value;
                            }))
                      ])))),
      Expanded(
          child: GestureDetector(
              onTap: () {
                onTapIN3();
              },
              child: Container(
                  height: 50,
                  width: 110,
                  margin: EdgeInsets.only(left: 5.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
                  decoration: AppDecoration.outlineBlack
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_in2".tr, style: theme.textTheme.titleMedium),
                        Spacer(),
                        Obx(() => CustomSwitch(
                            height: 18,
                            width: 35,
                            value: controller.isSelectedSwitch1.value,
                            onChange: (value) {
                              controller.isSelectedSwitch1.value = value;
                            }))
                      ])))),
      Expanded(
          child: GestureDetector(
              onTap: () {
                onTapIN3();
              },
              child: Container(
                  height: 50,
                  width: 110,
                  margin: EdgeInsets.only(left: 5.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
                  decoration: AppDecoration.outlineBlack
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_in3".tr, style: theme.textTheme.titleMedium),
                        Spacer(),
                        Obx(() => CustomSwitch(
                            height: 18,
                            width: 35,
                            value: controller.isSelectedSwitch2.value,
                            onChange: (value) {
                              controller.isSelectedSwitch2.value = value;
                            }))
                      ]))))
    ]);
  }

  /// Section Widget
  Widget _buildChooseCurrentRow() {
    return Obx(() {
      return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        controller.ns1IsClosed.value
            ? Container(
                margin: EdgeInsets.only(right: 5.h),
                decoration: AppDecoration.outlineBlack9001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.all(10.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text("lbl_current".tr,
                                        style:
                                            CustomTextStyles.bodySmallRegular)),
                                SizedBox(height: 1.v),
                                SizedBox(
                                    width: 90.h, child: Divider(indent: 2.h)),
                                SizedBox(height: 8.v),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 2.h, right: 9.h),
                                  child: Obx(
                                    () => Row(
                                      children: [
                                        CustomRadioButton(
                                            text: "lbl_l1".tr,
                                            value: controller.sensorModelObj
                                                .value.radioList.value[0],
                                            groupValue:
                                                controller.current.value,
                                            onChange: (value) {
                                              controller.current.value = value;
                                            }),
                                        Padding(
                                            padding: EdgeInsets.only(left: 9.h),
                                            child: CustomRadioButton(
                                                text: "lbl_l2".tr,
                                                value: controller.sensorModelObj
                                                    .value.radioList.value[1],
                                                groupValue:
                                                    controller.current.value,
                                                onChange: (value) {
                                                  controller.current.value =
                                                      value;
                                                }))
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Obx(() => Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: CustomRadioButton(
                                        text: "lbl_l3".tr,
                                        value: "lbl_l3".tr,
                                        groupValue: controller.radioGroup.value,
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        })))
                              ])),
                      SizedBox(height: 8.v),
                      Container(
                          width: 110,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 11.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 0.5.v),
                                    child: SizedBox(
                                        width: 88.h,
                                        child: Divider(
                                            height: 1.v,
                                            thickness: 1.v,
                                            color: appTheme.blueGray10003)));
                              },
                              itemCount: controller.sensorModelObj.value
                                  .radiooption1ItemList.value.length,
                              itemBuilder: (context, index) {
                                Radiooption1ItemModel model = controller
                                    .sensorModelObj
                                    .value
                                    .radiooption1ItemList
                                    .value[index];
                                return Radiooption1ItemWidget(model);
                              })))
                    ])))
            : Container(
                width: 115.h,
              ),
        controller.ns2IsClosed.value
            ? Container(
                margin: EdgeInsets.symmetric(horizontal: 5.h),
                decoration: AppDecoration.outlineBlack9001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text("lbl_current".tr,
                                        style:
                                            CustomTextStyles.bodySmallRegular)),
                                SizedBox(height: 1.v),
                                SizedBox(
                                    width: 90.h, child: Divider(indent: 2.h)),
                                SizedBox(height: 8.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.h, right: 9.h),
                                    child: Obx(() => Row(children: [
                                          CustomRadioButton(
                                              text: "lbl_l1".tr,
                                              value: controller.sensorModelObj
                                                  .value.radioList1.value[0],
                                              groupValue:
                                                  controller.current1.value,
                                              onChange: (value) {
                                                controller.current1.value =
                                                    value;
                                              }),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 9.h),
                                              child: CustomRadioButton(
                                                  text: "lbl_l2".tr,
                                                  value: controller
                                                      .sensorModelObj
                                                      .value
                                                      .radioList1
                                                      .value[1],
                                                  groupValue:
                                                      controller.current1.value,
                                                  onChange: (value) {
                                                    controller.current1.value =
                                                        value;
                                                  }))
                                        ]))),
                                SizedBox(height: 10.v),
                                Obx(() => Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: CustomRadioButton(
                                        text: "lbl_l3".tr,
                                        value: "lbl_l3".tr,
                                        groupValue:
                                            controller.radioGroup1.value,
                                        onChange: (value) {
                                          controller.radioGroup1.value = value;
                                        })))
                              ])),
                      SizedBox(height: 8.v),
                      Container(
                          width: 110,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 11.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 0.5.v),
                                    child: SizedBox(
                                        width: 88.h,
                                        child: Divider(
                                            height: 1.v,
                                            thickness: 1.v,
                                            color: appTheme.blueGray10003)));
                              },
                              itemCount: controller.sensorModelObj.value
                                  .radiooption1ItemList.value.length,
                              itemBuilder: (context, index) {
                                Radiooption1ItemModel model = controller
                                    .sensorModelObj
                                    .value
                                    .radiooption1ItemList
                                    .value[index];
                                return Radiooption1ItemWidget(model);
                              })))
                    ],
                  ),
                ),
              )
            : Container(
                width: 120.h,
              ),
        controller.ns3IsClosed.value
            ? Container(
                margin: EdgeInsets.only(left: 5.h),
                decoration: AppDecoration.outlineBlack9001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.all(10.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text("lbl_current".tr,
                                        style:
                                            CustomTextStyles.bodySmallRegular)),
                                SizedBox(height: 1.v),
                                SizedBox(
                                    width: 90.h, child: Divider(indent: 2.h)),
                                SizedBox(height: 8.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.h, right: 9.h),
                                    child: Obx(() => Row(children: [
                                          CustomRadioButton(
                                              text: "lbl_l1".tr,
                                              value: controller.sensorModelObj
                                                  .value.radioList3.value[0],
                                              groupValue:
                                                  controller.current2.value,
                                              onChange: (value) {
                                                controller.current2.value =
                                                    value;
                                              }),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 9.h),
                                              child: CustomRadioButton(
                                                  text: "lbl_l2".tr,
                                                  value: controller
                                                      .sensorModelObj
                                                      .value
                                                      .radioList3
                                                      .value[1],
                                                  groupValue:
                                                      controller.current2.value,
                                                  onChange: (value) {
                                                    controller.current2.value =
                                                        value;
                                                  }))
                                        ]))),
                                SizedBox(height: 10.v),
                                Obx(() => Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: CustomRadioButton(
                                        text: "lbl_l3".tr,
                                        value: "lbl_l3".tr,
                                        groupValue:
                                            controller.radioGroup3.value,
                                        onChange: (value) {
                                          controller.radioGroup3.value = value;
                                        })))
                              ])),
                      SizedBox(height: 8.v),
                      Container(
                          width: 110,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 11.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 0.5.v),
                                    child: SizedBox(
                                        width: 88.h,
                                        child: Divider(
                                            height: 1.v,
                                            thickness: 1.v,
                                            color: appTheme.blueGray10003)));
                              },
                              itemCount: controller.sensorModelObj.value
                                  .radiooption1ItemList.value.length,
                              itemBuilder: (context, index) {
                                Radiooption1ItemModel model = controller
                                    .sensorModelObj
                                    .value
                                    .radiooption1ItemList
                                    .value[index];
                                return Radiooption1ItemWidget(model);
                              }))),
                    ])))
            : Container(
                width: 115.h,
              )
      ]);
    });
  }

  /// Section Widget
  Widget _buildLabelStack() {
    return SizedBox(
        height: 260.v,
        width: 350.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 260.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  }),
              itemCount: controller
                  .sensorModelObj.value.sensorcomponentItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                SensorcomponentItemModel model = controller
                    .sensorModelObj.value.sensorcomponentItemList.value[index];
                return SensorcomponentItemWidget(model);
              })),
          Align(
            alignment: Alignment.topRight,
            child: Obx(
              () => Container(
                height: 8.v,
                margin: EdgeInsets.only(top: 12.v, right: 12.h),
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller.sensorModelObj.value.sensorcomponentItemList
                      .value.length,
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
          ),
        ]));
  }

  /// Section Widget
  Widget _buildChooseCurrentRow1() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: EdgeInsets.only(right: 5.h),
          decoration: AppDecoration.outlineBlack9001
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_current".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                          SizedBox(height: 1.v),
                          SizedBox(width: 90.h, child: Divider(indent: 2.h)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, right: 9.h),
                              child: Obx(() => Row(children: [
                                    CustomRadioButton(
                                        text: "lbl_l1".tr,
                                        value: controller.sensorModelObj.value
                                            .radioList5.value[0],
                                        groupValue: controller.current3.value,
                                        onChange: (value) {
                                          controller.current3.value = value;
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: CustomRadioButton(
                                            text: "lbl_l2".tr,
                                            value: controller.sensorModelObj
                                                .value.radioList5.value[1],
                                            groupValue:
                                                controller.current3.value,
                                            onChange: (value) {
                                              controller.current3.value = value;
                                            }))
                                  ]))),
                          SizedBox(height: 10.v),
                          Obx(() => Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: CustomRadioButton(
                                  text: "lbl_l3".tr,
                                  value: "lbl_l3".tr,
                                  groupValue: controller.radioGroup5.value,
                                  onChange: (value) {
                                    controller.radioGroup5.value = value;
                                  })))
                        ])),
                SizedBox(height: 8.v),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_clamp".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                        ]))
              ]))),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5.h),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.outlineBlack
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text("lbl_current".tr,
                                style: CustomTextStyles.bodySmallRegular)),
                        SizedBox(height: 1.v),
                        SizedBox(width: 90.h, child: Divider(indent: 2.h)),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 2.h, right: 9.h),
                            child: Obx(() => Row(children: [
                                  CustomRadioButton(
                                      text: "lbl_l1".tr,
                                      value: controller.sensorModelObj.value
                                          .radioList6.value[0],
                                      groupValue: controller.current4.value,
                                      onChange: (value) {
                                        controller.current4.value = value;
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: CustomRadioButton(
                                          text: "lbl_l2".tr,
                                          value: controller.sensorModelObj.value
                                              .radioList6.value[1],
                                          groupValue: controller.current4.value,
                                          onChange: (value) {
                                            controller.current4.value = value;
                                          }))
                                ]))),
                        SizedBox(height: 10.v),
                        Obx(() => Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: CustomRadioButton(
                                text: "lbl_l3".tr,
                                value: "lbl_l3".tr,
                                groupValue: controller.radioGroup6.value,
                                onChange: (value) {
                                  controller.radioGroup6.value = value;
                                })))
                      ])),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
      Container(
          margin: EdgeInsets.only(left: 5.h),
          decoration: AppDecoration.outlineBlack9001
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_current".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                          SizedBox(height: 1.v),
                          SizedBox(width: 90.h, child: Divider(indent: 2.h)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, right: 9.h),
                              child: Obx(() => Row(children: [
                                    CustomRadioButton(
                                        text: "lbl_l1".tr,
                                        value: controller.sensorModelObj.value
                                            .radioList8.value[0],
                                        groupValue: controller.current5.value,
                                        onChange: (value) {
                                          controller.current5.value = value;
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: CustomRadioButton(
                                            text: "lbl_l2".tr,
                                            value: controller.sensorModelObj
                                                .value.radioList8.value[1],
                                            groupValue:
                                                controller.current5.value,
                                            onChange: (value) {
                                              controller.current5.value = value;
                                            }))
                                  ]))),
                          SizedBox(height: 10.v),
                          Obx(() => Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: CustomRadioButton(
                                  text: "lbl_l3".tr,
                                  value: "lbl_l3".tr,
                                  groupValue: controller.radioGroup8.value,
                                  onChange: (value) {
                                    controller.radioGroup8.value = value;
                                  })))
                        ])),
                SizedBox(height: 8.v),
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildSaveButton1() {
    return CustomElevatedButton(text: "lbl_save".tr);
  }

  onTapIN3() {
    // TODO: implement Actions
  }
}
