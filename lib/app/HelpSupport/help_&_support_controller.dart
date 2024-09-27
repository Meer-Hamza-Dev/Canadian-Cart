import 'package:get/get.dart';

class HelpSupportcontroller extends GetxController{
  var seletedValuetype = "FAQ".obs;
  updateValueType(Val){
    seletedValuetype.value = Val;
    update();
  }

}