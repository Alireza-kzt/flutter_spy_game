import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/rout_path.dart';

class SpyController extends GetxController {
  ScrollController scrollController = ScrollController();
  RxInt players = 4.obs;
  RxInt minutes = 5.obs;
  RxInt spies = 1.obs;

  static SpyController get to => Get.find();

  @override
  void onReady() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
    );
  }

  startGrantingRoles() => Get.toNamed(RoutePath.role);

  addPlayer() => players.value++;

  addMinute() => minutes.value++;

  addSpy() {
    if (spies.value < players.value) {
      spies.value++;
    }
  }

  reducePlayer() {
    if (players.value > 4) {
      if (spies.value < players.value) {
        players.value--;
      }
    }
  }

  reduceMinute() {
    if (minutes.value > 1) {
      minutes.value--;
    }
  }

  reduceSpy() {
    if (spies.value > 1) {
      spies.value--;
    }
  }
}
