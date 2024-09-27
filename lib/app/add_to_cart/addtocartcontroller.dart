import 'package:get/get.dart';

class Addtocartcontroller extends GetxController{
  var seletedValuetype = "delivery".obs;
  updateValueType(Val){
    seletedValuetype.value = Val;
    update();
  }

}