import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spy/spy/view/widgets/counter_input_widget.dart';
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
              SvgPicture.asset('assets/images/spy.svg', height: 230),
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

          onPressed: SpyController.to.startGrantingRoles,
        ),
      ),
    );
  }
}
