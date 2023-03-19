import 'package:get/get.dart';

class IncreaseAndDecreaseInputController extends GetxController{


  static IncreaseAndDecreaseInputController get to => Get.find<IncreaseAndDecreaseInputController>();

  increasePress(Rx<int> counter){
    if(counter.value != 99){
      counter.value++;
    }
  }

  decreasePress(Rx<int> counter){
    if(counter.value != 1){
      counter.value--;
    }
  }

}