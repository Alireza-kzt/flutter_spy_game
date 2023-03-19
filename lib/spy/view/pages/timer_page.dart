import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spy/core/constants/rout_path.dart';

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
          child: const Text('اتمام بازی'),
          style: ButtonStyleFrom.of(context).largeOutlinedButtonStyle?.copyWith(
            foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onBackground),
            side: MaterialStateProperty.all(BorderSide(color: Theme.of(context).colorScheme.primaryContainer)),
          ),
          onPressed: () => Get.offNamed(RoutPath.root),
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
            SpyTimerController.to.obx((timeout)=> Text('04:$timeout', style: context.textTheme.displayLarge)),
          ],
        ),
      ),
    );
  }
}
