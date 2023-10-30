import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spy/core/view/widgets/snackbar.dart';

import '../../core/constants/rout_path.dart';

class SpyController extends GetxController {
  ScrollController scrollController = ScrollController();
  RxInt players = 4.obs;
  RxInt minutes = 5.obs;
  RxInt spies = 1.obs;

  static SpyController get to => Get.find();

  startGrantingRoles() => Get.toNamed(RoutePath.role);

  addPlayer() => players.value++;

  addMinute() => minutes.value++;

  addSpy() {
    if (spies.value < (players.value / 2).floor()) {
      spies.value++;
    } else {
      showSnackBar(
          'تعداد جاسوس',
          'تعداد جاسوس باید از نصف بازیکنان کمتر باشه.'
      );
    }
  }

  reducePlayer() {
    if (players.value > 4) {
      if (spies.value < players.value) {
        players.value--;
      } else {
        showSnackBar(
            'تعداد بازیکنان',
            'تعداد بازیکنان باید از جاسوس ها بیشتر باشه.'
        );
      }
    } else {
      showSnackBar(
        'تعداد بازیکنان',
        'حداقل باید 4 بازیکن توی بازی باشن.'
      );
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
