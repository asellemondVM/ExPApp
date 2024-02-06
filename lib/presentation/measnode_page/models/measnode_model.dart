import 'package:enexpet/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'tag_item_model.dart';

/// This class defines the variables used in the [measnode_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MeasnodeModel {
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

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
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

  Rx<List<TagItemModel>> tagItemList = Rx([
    TagItemModel(inVar: "IN1".obs, count: "50".obs, unit: "mA".obs),
    TagItemModel(inVar: "IN3".obs, count: "300".obs, unit: "mA".obs),
    TagItemModel(inVar: "IN6".obs, count: "300".obs, unit: "mA".obs),
    TagItemModel(inVar: "IN2".obs, count: "100".obs, unit: "mA".obs),
    TagItemModel(inVar: "IN4".obs, count: "300".obs, unit: "mA".obs),
    TagItemModel(inVar: "IN5".obs, count: "300".obs, unit: "mA".obs)
  ]);
}
