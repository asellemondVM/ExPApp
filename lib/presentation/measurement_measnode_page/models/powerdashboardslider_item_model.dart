import '../../../core/app_export.dart';

/// This class is used in the [powerdashboardslider_item_widget] screen.
class PowerdashboardsliderItemModel {
  PowerdashboardsliderItemModel({
    this.eightHundredFiveText,
    this.kwText,
    this.lineWeatherFlashlightImage,
    this.activePowerText,
    this.kwText1,
    this.oneHundredText,
    this.seventyFiveText,
    this.fiftyText,
    this.twentyFiveText,
    this.vector1064Image,
    this.zeroText,
    this.fifteenText,
    this.thirtyText,
    this.fortyFiveText,
    this.sixtyText,
    this.lastHour,
    this.id,
  }) {
    eightHundredFiveText = eightHundredFiveText ?? Rx("80,5");
    kwText = kwText ?? Rx("Kw");
    lineWeatherFlashlightImage = lineWeatherFlashlightImage ??
        Rx(ImageConstant.imgLineWeatherFlashlightLine);
    activePowerText = activePowerText ?? Rx("Active Power");
    kwText1 = kwText1 ?? Rx("kW");
    oneHundredText = oneHundredText ?? Rx("100");
    seventyFiveText = seventyFiveText ?? Rx("75");
    fiftyText = fiftyText ?? Rx("50");
    twentyFiveText = twentyFiveText ?? Rx("25");
    vector1064Image = vector1064Image ?? Rx(ImageConstant.imgVector1064);
    zeroText = zeroText ?? Rx("0");
    fifteenText = fifteenText ?? Rx("15");
    thirtyText = thirtyText ?? Rx("30");
    fortyFiveText = fortyFiveText ?? Rx("45");
    sixtyText = sixtyText ?? Rx("60");
    lastHour = lastHour ?? Rx("Last 1 hour");
    id = id ?? Rx("");
  }

  Rx<String>? eightHundredFiveText;

  Rx<String>? kwText;

  Rx<String>? lineWeatherFlashlightImage;

  Rx<String>? activePowerText;

  Rx<String>? kwText1;

  Rx<String>? oneHundredText;

  Rx<String>? seventyFiveText;

  Rx<String>? fiftyText;

  Rx<String>? twentyFiveText;

  Rx<String>? vector1064Image;

  Rx<String>? zeroText;

  Rx<String>? fifteenText;

  Rx<String>? thirtyText;

  Rx<String>? fortyFiveText;

  Rx<String>? sixtyText;

  Rx<String>? lastHour;

  Rx<String>? id;
}
