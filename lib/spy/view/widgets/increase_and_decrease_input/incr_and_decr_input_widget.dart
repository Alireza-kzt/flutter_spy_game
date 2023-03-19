import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'incr_and_decr_input_controller.dart';

// ignore: must_be_immutable
class IncreaseAndDecreaseInputWidget extends StatelessWidget {
  late Rx<int>? counter;
  final String unit;
  final String? title;

  final controller = Get.put(IncreaseAndDecreaseInputController());

  IncreaseAndDecreaseInputWidget({required this.counter, super.key, required this.unit, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) Text(title!, style: context.textTheme.titleSmall),
        if (title != null) const SizedBox(height: 8),
        Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Theme.of(context).colorScheme.surfaceVariant),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => controller.increasePress(counter!),
                    icon: Icon(
                      Icons.add_rounded,
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: VerticalDivider(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      width: 0,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              Obx(
                () => Text(
                  '${counter!.value} $unit',
                  style: context.textTheme.titleMedium,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: VerticalDivider(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      width: 0,
                      thickness: 1,
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.decreasePress(counter!),
                    icon: SvgPicture.asset(
                      'assets/images/decrease.svg',
                      color:  Theme.of(context).colorScheme.primaryContainer,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
