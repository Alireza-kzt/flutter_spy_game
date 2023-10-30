import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterInputWidget extends StatelessWidget {
  late Rx<int>? counter;
  final String unit;
  final String? title;
  final Function()? onIncrement;
  final Function()? onDecrement;

  CounterInputWidget({
    super.key,
    required this.counter,
    required this.unit,
    this.title,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) Text(title!, style: context.textTheme.bodyMedium),
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
                    onPressed: onIncrement,
                    icon: Icon(
                      Icons.add_rounded,
                      color: Theme.of(context).colorScheme.onBackground,
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
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Obx(
                          () => Text(
                            '${counter!.value}',
                            style: context.textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        unit,
                        style: context.textTheme.titleLarge,
                      ),
                    ),
                  ],
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
                    onPressed: onDecrement,
                    icon: Icon(
                      Icons.remove_rounded,
                      color: Theme.of(context).colorScheme.onBackground,
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
