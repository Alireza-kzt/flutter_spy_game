import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spy/core/constants/rout_path.dart';
import 'package:spy/spy/controller/spy_controller.dart';
import 'package:spy/spy/view/widgets/stop_watch_widget.dart';

import '../../../core/view/styles/button_style.dart';
import '../../controller/spy_timer_controller.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: OutlinedButton(
          style: ButtonStyleFrom.of(context).largeOutlinedButtonStyle?.copyWith(
                foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onBackground),
                side: MaterialStateProperty.all(BorderSide(color: Theme.of(context).colorScheme.primaryContainer)),
              ),
          onPressed: () => Get.offNamed(RoutePath.root),
          child: const Text('اتمام بازی'),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            const SizedBox(height: 24),
            Image.asset('assets/images/spy.png', height: 230),
            const SizedBox(height: 120),
            SpyTimerController.to.obx(
              (timeout) => Directionality(
                textDirection: TextDirection.ltr,
                child: TimerCountdown(
                  endTime: DateTime.now().add(Duration(minutes: SpyController.to.minutes.value)),
                  format: CountDownTimerFormat.minutesSeconds,
                  enableDescriptions: false,
                  timeTextStyle: context.textTheme.displayLarge,
                  colonsTextStyle: context.textTheme.displayLarge,
                  onEnd: SpyTimerController.to.onTimeOut,
                ),
              ),
              onEmpty: Text('شت! زمان تموم شد!', style: context.textTheme.displaySmall),
            ),
          ],
        ),
      ),
    );
  }
}
