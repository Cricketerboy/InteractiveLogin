import 'package:get/get.dart';

/// A controller class for the AppNavigationScreen.
/// This class manages the state of the AppNavigationScreen,
/// including the current appNavigationModelObj.
import 'package:flutter/material.dart';

import 'package:sms_autofill/sms_autofill.dart';

class DetailsThreeController extends GetxController with CodeAutoFill {
  TextEditingController emailController = TextEditingController();
  Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<DetailsThreeModel> detailsThreeModelObj = DetailsThreeModel().obs;

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void codeUpdated() {
    otpController.value.text = code ?? "";
  }
}

class DetailsThreeModel {}
