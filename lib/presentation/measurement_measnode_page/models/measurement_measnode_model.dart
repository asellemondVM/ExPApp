import 'package:enexpet/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'powerdashboardslider_item_model.dart';
import 'powerusageslider_item_model.dart';
import 'powerusageslider1_item_model.dart';
import 'powerusageslider2_item_model.dart';

/// This class defines the variables used in the [measurement_measnode_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MeasurementMeasnodeModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<PowerdashboardsliderItemModel>> powerdashboardsliderItemList = Rx([
    PowerdashboardsliderItemModel(
        eightHundredFiveText: "80,5".obs,
        kwText: "Kw".obs,
        lineWeatherFlashlightImage:
            ImageConstant.imgLineWeatherFlashlightLine.obs,
        activePowerText: "Active Power".obs,
        kwText1: "kW".obs,
        oneHundredText: "100".obs,
        seventyFiveText: "75".obs,
        fiftyText: "50".obs,
        twentyFiveText: "25".obs,
        vector1064Image: ImageConstant.imgVector1064.obs,
        zeroText: "0".obs,
        fifteenText: "15".obs,
        thirtyText: "30".obs,
        fortyFiveText: "45".obs,
        sixtyText: "60".obs,
        lastHour: "Last 1 hour".obs),
    PowerdashboardsliderItemModel(
        eightHundredFiveText: "56,5".obs,
        kwText: "Kw".obs,
        lineWeatherFlashlightImage: ImageConstant.imgLineSystemEye2Line.obs,
        activePowerText: "Apparent Power".obs,
        kwText1: "kW".obs,
        oneHundredText: "100".obs,
        seventyFiveText: "75".obs,
        fiftyText: "50".obs,
        twentyFiveText: "25".obs,
        vector1064Image: ImageConstant.imgVector1064.obs,
        zeroText: "0".obs,
        fifteenText: "15".obs,
        thirtyText: "30".obs,
        fortyFiveText: "45".obs,
        sixtyText: "60".obs,
        lastHour: "Last 1 hour".obs),
    PowerdashboardsliderItemModel(
        eightHundredFiveText: "0,88".obs,
        kwText: "Cos ϕ".obs,
        lineWeatherFlashlightImage: ImageConstant.imgLineDevelopmen.obs,
        activePowerText: "Cos Phi".obs,
        kwText1: "Cos ϕ".obs,
        oneHundredText: "1".obs,
        seventyFiveText: "0,75".obs,
        fiftyText: "0,50".obs,
        twentyFiveText: "0,25".obs,
        zeroText: "0".obs,
        fifteenText: "15".obs,
        thirtyText: "30".obs,
        fortyFiveText: "45".obs,
        sixtyText: "60".obs,
        lastHour: "Last 1 hour".obs)
  ]);

  Rx<List<PowerusagesliderItemModel>> powerusagesliderItemList = Rx([
    PowerusagesliderItemModel(
        eightHundredFive: "80,5".obs,
        kw: "Kw".obs,
        lineWeatherFlashlightLine:
            ImageConstant.imgLineWeatherFlashlightLine.obs,
        activePower: "Active Power".obs,
        kW: "kW".obs,
        oneHundred: "100".obs,
        seventyFive: "75".obs,
        fifty: "50".obs,
        twentyFive: "25".obs,
        vector1064: ImageConstant.imgVector1064.obs,
        zero: "0".obs,
        fifteen: "15".obs,
        thirty: "30".obs,
        fortyFive: "45".obs,
        sixty: "60".obs,
        last1Hour: "Last 1 hour".obs),
    PowerusagesliderItemModel(
        eightHundredFive: "56,5".obs,
        kw: "Kw".obs,
        lineWeatherFlashlightLine: ImageConstant.imgLineSystemEye2Line.obs,
        activePower: "Apparent Power".obs,
        kW: "kW".obs,
        oneHundred: "100".obs,
        seventyFive: "75".obs,
        fifty: "50".obs,
        twentyFive: "25".obs,
        vector1064: ImageConstant.imgVector1064.obs,
        zero: "0".obs,
        fifteen: "15".obs,
        thirty: "30".obs,
        fortyFive: "45".obs,
        sixty: "60".obs,
        last1Hour: "Last 1 hour".obs),
    PowerusagesliderItemModel(
        eightHundredFive: "0,88".obs,
        kw: "Cos ϕ".obs,
        lineWeatherFlashlightLine: ImageConstant.imgLineDevelopmen.obs,
        activePower: "Cos Phi".obs,
        kW: "Cos ϕ".obs,
        oneHundred: "1".obs,
        seventyFive: "0,75".obs,
        fifty: "0,50".obs,
        twentyFive: "0,25".obs,
        zero: "0".obs,
        fifteen: "15".obs,
        thirty: "30".obs,
        fortyFive: "45".obs,
        sixty: "60".obs,
        last1Hour: "Last 1 hour".obs)
  ]);

  Rx<List<Powerusageslider1ItemModel>> powerusageslider1ItemList = Rx([
    Powerusageslider1ItemModel(
        eightHundredFive: "80,5".obs,
        kw: "Kw".obs,
        lineWeatherFlashlightLine:
            ImageConstant.imgLineWeatherFlashlightLine.obs,
        activePower: "Active Power".obs,
        kW: "kW".obs,
        oneHundred: "100".obs,
        seventyFive: "75".obs,
        fifty: "50".obs,
        twentyFive: "25".obs,
        vector: ImageConstant.imgVector1064.obs,
        zero: "0".obs,
        fifteen: "15".obs,
        thirty: "30".obs,
        fortyFive: "45".obs,
        sixty: "60".obs,
        last1Hour: "Last 1 hour".obs),
    Powerusageslider1ItemModel(
        eightHundredFive: "56,5".obs,
        kw: "Kw".obs,
        lineWeatherFlashlightLine: ImageConstant.imgLineSystemEye2Line.obs,
        activePower: "Apparent Power".obs,
        kW: "kW".obs,
        oneHundred: "100".obs,
        seventyFive: "75".obs,
        fifty: "50".obs,
        twentyFive: "25".obs,
        vector: ImageConstant.imgVector1064.obs,
        zero: "0".obs,
        fifteen: "15".obs,
        thirty: "30".obs,
        fortyFive: "45".obs,
        sixty: "60".obs,
        last1Hour: "Last 1 hour".obs),
    Powerusageslider1ItemModel(
        eightHundredFive: "0,88".obs,
        kw: "Cos ϕ".obs,
        lineWeatherFlashlightLine: ImageConstant.imgLineDevelopmen.obs,
        activePower: "Cos Phi".obs,
        kW: "Cos ϕ".obs,
        oneHundred: "1".obs,
        seventyFive: "0,75".obs,
        fifty: "0,50".obs,
        twentyFive: "0,25".obs,
        zero: "0".obs,
        fifteen: "15".obs,
        thirty: "30".obs,
        fortyFive: "45".obs,
        sixty: "60".obs,
        last1Hour: "Last 1 hour".obs)
  ]);

  Rx<List<Powerusageslider2ItemModel>> powerusageslider2ItemList = Rx([
    Powerusageslider2ItemModel(
        eightHundredFive: "80,5".obs,
        kw: "Kw".obs,
        lineWeatherFlashlightLine:
            ImageConstant.imgLineWeatherFlashlightLine.obs,
        activePower: "Active Power".obs,
        kW: "kW".obs,
        oneHundred: "100".obs,
        seventyFive: "75".obs,
        fifty: "50".obs,
        twentyFive: "25".obs,
        vector: ImageConstant.imgVector1064.obs,
        zero: "0".obs,
        fifteen: "15".obs,
        thirty: "30".obs,
        fortyFive: "45".obs,
        sixty: "60".obs,
        lastHour: "Last 1 hour".obs),
    Powerusageslider2ItemModel(
        eightHundredFive: "56,5".obs,
        kw: "Kw".obs,
        lineWeatherFlashlightLine: ImageConstant.imgLineSystemEye2Line.obs,
        activePower: "Apparent Power".obs,
        kW: "kW".obs,
        oneHundred: "100".obs,
        seventyFive: "75".obs,
        fifty: "50".obs,
        twentyFive: "25".obs,
        vector: ImageConstant.imgVector1064.obs,
        zero: "0".obs,
        fifteen: "15".obs,
        thirty: "30".obs,
        fortyFive: "45".obs,
        sixty: "60".obs,
        lastHour: "Last 1 hour".obs)
  ]);
}
