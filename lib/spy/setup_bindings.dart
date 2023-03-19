import 'package:get/get.dart';

import 'controller/setup_controller.dart';

class SetupBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SetupController());
  }
}
