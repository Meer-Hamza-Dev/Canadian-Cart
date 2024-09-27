import 'package:get/get.dart';

class HomeController extends GetxController {
  var indexValue = 0.obs;

  updateIndexValue(value) {
    indexValue.value = value;
    update();
  }
}
