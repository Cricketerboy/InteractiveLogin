import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PasswordController extends GetxController {
  TextEditingController passwordOneController = TextEditingController();
  TextEditingController passwordTwoController = TextEditingController();

  Rx<PasswordModel> passwordModelObj = PasswordModel().obs;

  RxBool isShowPassword = true.obs;
  RxBool isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordOneController.dispose();
    passwordTwoController.dispose();
  }
}

class PasswordModel {}
