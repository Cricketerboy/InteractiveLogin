import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loanapp/data/model/selection_popup_model.dart';

/// A controller class for the AppNavigationScreen.
/// This class manages the state of the AppNavigationScreen,
/// including the current appNavigationModelObj.
class DetailsOneController extends GetxController {
  TextEditingController firstNameInputController = TextEditingController();
  TextEditingController lastNameInputController = TextEditingController();
  TextEditingController dateOfBirthInputController = TextEditingController();

  Rx<DetailsOneModel> detailsOneModelObj = DetailsOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    firstNameInputController.dispose();
    lastNameInputController.dispose();
    dateOfBirthInputController.dispose();
  }

  void onSelected(dynamic value) {
    for (var element in detailsOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    detailsOneModelObj.value.dropdownItemList.refresh();
  }

  void onSelected1(dynamic value) {
    for (var element in detailsOneModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    detailsOneModelObj.value.dropdownItemList1.refresh();
  }
}

class DetailsOneModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(id: 1, title: "Male", isSelected: true),
    SelectionPopupModel(id: 2, title: "Female"),
    SelectionPopupModel(id: 3, title: "Other"),
  ]);

  Rx<DateTime>? selectedDateOfBirthInput = Rx(DateTime.now());

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(id: 1, title: "Single", isSelected: true),
    SelectionPopupModel(id: 2, title: "Married"),
    SelectionPopupModel(id: 3, title: "Other"),
  ]);
}
