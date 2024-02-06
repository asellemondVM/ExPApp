import '../../../core/app_export.dart';

/// This class is used in the [availablepagelist_item_widget] screen.
class AvailablepagelistItemModel {
  AvailablepagelistItemModel({
    this.pageTitle,
    this.functionTitle,
    this.slashText,
    this.menuLabel,
    this.id,
  }) {
    pageTitle = pageTitle ?? Rx("Page");
    functionTitle = functionTitle ?? Rx("Function");
    slashText = slashText ?? Rx("/");
    menuLabel = menuLabel ?? Rx("Menu page");
    id = id ?? Rx("");
  }

  Rx<String>? pageTitle;

  Rx<String>? functionTitle;

  Rx<String>? slashText;

  Rx<String>? menuLabel;

  Rx<String>? id;
}
