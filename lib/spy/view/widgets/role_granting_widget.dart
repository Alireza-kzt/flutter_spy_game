import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spy/core/constants/rout_path.dart';

import '../../../core/view/styles/button_style.dart';

class RoleGrantingWidget extends StatelessWidget {
  const RoleGrantingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: OutlinedButton(
          child: Text('دیدم'),
          style: ButtonStyleFrom.of(context).largeOutlinedButtonStyle?.copyWith(
                foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onBackground),
                side: MaterialStateProperty.all(BorderSide(color: Theme.of(context).colorScheme.primaryContainer)),
              ),
          onPressed: () => Get.toNamed(RoutPath.timer),
        ),
      ),
      body: Center(
        child: Text('دست انداز', style: context.textTheme.displayMedium),
      ),
    );
  }
}
