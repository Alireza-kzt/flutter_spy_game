import 'package:get/get.dart';
import 'controller/role_controller.dart';

class RoleBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RoleController());
  }
}