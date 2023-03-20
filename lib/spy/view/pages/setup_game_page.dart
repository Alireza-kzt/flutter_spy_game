import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spy/spy/view/widgets/counter_input_widget.dart';
import '../../../core/constants/rout_path.dart';
import '../../../core/view/styles/button_style.dart';
import '../../controller/spy_controller.dart';

class SetupGamePage extends StatelessWidget {
  const SetupGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: SpyController.to.scrollController,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Image.asset('assets/images/spy.png', height: 230),
              const SizedBox(height: 32),
              CounterInputWidget(
                counter: SpyController.to.minutes,
                unit: 'دقیقه',
                title: 'زمان',
                onIncrement: SpyController.to.addMinute,
                onDecrement: SpyController.to.reduceMinute,
              ),
              const SizedBox(height: 32),
              CounterInputWidget(
                counter: SpyController.to.players,
                unit: 'نفر',
                title: 'تعداد بازیکنان',
                onIncrement: SpyController.to.addPlayer,
                onDecrement: SpyController.to.reducePlayer,
              ),
              const SizedBox(height: 32),
              CounterInputWidget(
                counter: SpyController.to.spies,
                unit: 'نفر',
                title: 'تعداد جاسوس',
                onIncrement: SpyController.to.addSpy,
                onDecrement: SpyController.to.reduceSpy,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: ElevatedButton(
          child: const Text('شروع بازی'),
          style: ButtonStyleFrom.of(context).largeElevatedButtonStyle?.copyWith(backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primaryContainer)),
          onPressed: SpyController.to.startGrantingRoles,
        ),
      ),
    );
  }
}
