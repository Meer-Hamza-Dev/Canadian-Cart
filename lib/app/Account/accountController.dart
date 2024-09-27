import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Accountcontroller extends GetxController {
  var seletedValuetype = "Language".obs;
  updateValueType(value) {
    seletedValuetype.value = value;
    update();
  }

   changeLanguage(String languageCode, String countryCode) {
    var language = Locale(languageCode, countryCode);
    Get.updateLocale(language);
  }
}
