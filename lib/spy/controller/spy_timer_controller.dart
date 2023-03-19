import 'dart:async';

import 'package:get/get.dart';

class SpyTimerController extends GetxController with StateMixin {
  RxInt timeOut = 60.obs;
  final second = const Duration(seconds: 1);

  static SpyTimerController get to => Get.find();

  @override
  onInit() {
    startTimer();
    super.onInit();
  }

  startTimer() {
    timeOut.value = 60;
    change(timeOut.value, status: RxStatus.success());
    Timer.periodic(
      second,
      (timer) async {
        timeOut.value--;
        change(timeOut.value, status: RxStatus.success());
        if (timeOut.value == 0) {
          timer.cancel();
          change(null, status: RxStatus.empty());
        }
      },
    );
  }
}
