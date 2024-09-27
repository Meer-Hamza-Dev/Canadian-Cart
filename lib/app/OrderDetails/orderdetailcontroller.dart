import 'package:get/get.dart';

class Orderdetailcontroller extends GetxController{
  var seletedValuetype = "delivery".obs;
  updateValueType(Val){
    seletedValuetype.value = Val;
    update();
  }

}