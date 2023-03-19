import 'package:get/get.dart';

class SetupController extends GetxController {
  RxInt players = 1.obs;
  RxInt minutes = 1.obs;
  RxInt spies = 1.obs;

  static SetupController get to => Get.find();
}