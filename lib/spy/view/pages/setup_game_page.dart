import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/rout_path.dart';
import '../../../core/view/styles/button_style.dart';
import '../../controller/setup_controller.dart';
import '../widgets/increase_and_decrease_input/incr_and_decr_input_widget.dart';

class SetupGamePage extends StatelessWidget {
  const SetupGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: ElevatedButton(
          child: const Text('شروع بازی'),
          style: ButtonStyleFrom.of(context).largeElevatedButtonStyle?.copyWith(backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primaryContainer)),
          onPressed: () => Get.toNamed(RoutPath.role),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Image.asset('assets/images/spy.png', height: 230),
              const SizedBox(height: 32),
              IncreaseAndDecreaseInputWidget(
                counter: SetupController.to.minutes,
                unit: 'دقیقه',
                title: 'زمان',
              ),
              const SizedBox(height: 32),
              IncreaseAndDecreaseInputWidget(
                counter: SetupController.to.players,
                unit: 'نفر',
                title: 'تعداد بازیکنان',
              ),
              const SizedBox(height: 32),
              IncreaseAndDecreaseInputWidget(
                counter: SetupController.to.spies,
                unit: 'نفر',
                title: 'تعداد جاسوس',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
