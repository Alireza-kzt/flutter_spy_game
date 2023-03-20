import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spy/core/constants/rout_path.dart';
import 'package:spy/spy/controller/spy_controller.dart';

class RoleController extends GetxController {
  final PageController pageController = PageController();
  RxBool seen = false.obs;
  late List<int> spies;

  static RoleController get to => Get.find();

  @override
  onInit() {
    spies = generateRandomIntegers(SpyController.to.spies.value, SpyController.to.players.value);

    super.onInit();
  }

  List<int> generateRandomIntegers(int count, int max) {
    Set<int> randomSet = {};

    var random = Random();

    for (var i = 0; randomSet.length < count; i++) {
      randomSet.add(random.nextInt(max));
    }

    return randomSet.toList();
  }

  onGrantPressed() {
    seen.value = false;
    pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  onSeenPressed() => seen.value = true;

  startGame() => Get.offNamed(RoutePath.timer);
}
