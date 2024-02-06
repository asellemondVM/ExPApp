import '../../../core/app_export.dart';

/// This class is used in the [powerusageslider_item_widget] screen.
class PowerusagesliderItemModel {
  PowerusagesliderItemModel({
    this.eightHundredFive,
    this.kw,
    this.lineWeatherFlashlightLine,
    this.activePower,
    this.kW,
    this.oneHundred,
    this.seventyFive,
    this.fifty,
    this.twentyFive,
    this.vector1064,
    this.zero,
    this.fifteen,
    this.thirty,
    this.fortyFive,
    this.sixty,
    this.last1Hour,
    this.id,
  }) {
    eightHundredFive = eightHundredFive ?? Rx("80,5");
    kw = kw ?? Rx("Kw");
    lineWeatherFlashlightLine = lineWeatherFlashlightLine ??
        Rx(ImageConstant.imgLineWeatherFlashlightLine);
    activePower = activePower ?? Rx("Active Power");
    kW = kW ?? Rx("kW");
    oneHundred = oneHundred ?? Rx("100");
    seventyFive = seventyFive ?? Rx("75");
    fifty = fifty ?? Rx("50");
    twentyFive = twentyFive ?? Rx("25");
    vector1064 = vector1064 ?? Rx(ImageConstant.imgVector1064);
    zero = zero ?? Rx("0");
    fifteen = fifteen ?? Rx("15");
    thirty = thirty ?? Rx("30");
    fortyFive = fortyFive ?? Rx("45");
    sixty = sixty ?? Rx("60");
    last1Hour = last1Hour ?? Rx("Last 1 hour");
    id = id ?? Rx("");
  }

  Rx<String>? eightHundredFive;

  Rx<String>? kw;

  Rx<String>? lineWeatherFlashlightLine;

  Rx<String>? activePower;

  Rx<String>? kW;

  Rx<String>? oneHundred;

  Rx<String>? seventyFive;

  Rx<String>? fifty;

  Rx<String>? twentyFive;

  Rx<String>? vector1064;

  Rx<String>? zero;

  Rx<String>? fifteen;

  Rx<String>? thirty;

  Rx<String>? fortyFive;

  Rx<String>? sixty;

  Rx<String>? last1Hour;

  Rx<String>? id;
}
