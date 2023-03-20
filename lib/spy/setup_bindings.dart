import 'package:get/get.dart';

import 'controller/spy_controller.dart';

class SetupBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SpyController());
  }
}
