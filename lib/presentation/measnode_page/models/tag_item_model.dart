import '../../../core/app_export.dart';

/// This class is used in the [tag_item_widget] screen.
class TagItemModel {
  TagItemModel({
    this.inVar,
    this.count,
    this.unit,
    this.id,
  }) {
    inVar = inVar ?? Rx("IN1");
    count = count ?? Rx("50");
    unit = unit ?? Rx("mA");
    id = id ?? Rx("");
  }

  Rx<String>? inVar;

  Rx<String>? count;

  Rx<String>? unit;

  Rx<String>? id;
}
