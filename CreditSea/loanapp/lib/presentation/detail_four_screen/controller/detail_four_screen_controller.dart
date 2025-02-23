import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// This class manages the state of the DetailsFourScreen, including the current DetailsFourModel.
class DetailsFourController extends GetxController {
  TextEditingController egabcde1234fController = TextEditingController();

  Rx<DetailsFourModel> detailsFourModelObj = DetailsFourModel().obs;

  @override
  void onClose() {
    super.onClose();
    egabcde1234fController.dispose();
  }
}

class DetailsFourModel {}
