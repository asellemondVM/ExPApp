import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

/// This class is used in the [sensorcomponent_item_widget] screen.
class SensorcomponentItemModel {
  SensorcomponentItemModel({
    this.labelController,
    this.id,
  }) {
    labelController = labelController ?? TextEditingController();
    id = id ?? Rx("");
  }

  TextEditingController? labelController;

  Rx<String>? id;
}
