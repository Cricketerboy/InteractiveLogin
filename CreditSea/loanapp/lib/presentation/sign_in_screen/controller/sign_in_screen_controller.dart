import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';

class SignInScreenController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;
  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('91').obs;

  RxBool isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }
}

class SignInModel {}
