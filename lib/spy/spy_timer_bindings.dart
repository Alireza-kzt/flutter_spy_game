import 'package:get/get.dart';
import 'controller/spy_timer_controller.dart';

class SpyTimerBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SpyTimerController());
  }
}
