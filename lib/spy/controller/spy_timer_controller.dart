import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class SpyTimerController extends GetxController with StateMixin {
  final second = const Duration(seconds: 1);

  static SpyTimerController get to => Get.find();

  @override
  onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  void onTimeOut() {
    if(!kIsWeb) FlutterRingtonePlayer.playNotification();
    change(null, status: RxStatus.empty());
  }
}
