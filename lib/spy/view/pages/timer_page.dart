import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:spy/core/constants/rout_path.dart';
import 'package:spy/core/view/styles/decorations.dart';
import 'package:spy/spy/controller/spy_controller.dart';
import 'package:spy/spy/view/widgets/stop_watch_widget.dart';
import '../../controller/spy_timer_controller.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: ElevatedButton(
          onPressed: () => Get.offNamed(RoutePath.root),
          child: const Text('اتمام بازی'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Decorations.paddingHorizontal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            SvgPicture.asset('assets/images/spy.svg', height: 230),
            const SizedBox(height: 120),
            SpyTimerController.to.obx(
              (timeout) => Directionality(
                textDirection: TextDirection.ltr,
                child: SlideCountdownSeparated(
                  duration: Duration(minutes: SpyController.to.minutes.value),
                  separator: ':',
                  separatorStyle: context.textTheme.displayLarge!,
                  textStyle: context.textTheme.displayLarge!,
                  style: context.textTheme.displayLarge!,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.all(Radius.circular(16))),
                ),
                  // endTime: DateTime.now().add(Duration(minutes: SpyController.to.minutes.value)),
                  // format: CountDownTimerFormat.minutesSeconds,
                  // enableDescriptions: false,
                  // timeTextStyle: context.textTheme.displayLarge,
                  // colonsTextStyle: context.textTheme.displayLarge,
                  // onEnd: SpyTimerController.to.onTimeOut,
                ),
              onEmpty: Text('شت! زمان تموم شد!', style: context.textTheme.displaySmall),
            ),
          ],
        ),
      ),
    );
  }
}
