import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoleGrantingWidget extends StatelessWidget {
  final bool seen;
  final bool isLastRole;
  final String word;
  final Function() onGrantPressed;
  final Function() onSeenPressed;
  final Function() onFinishedPressed;

  const RoleGrantingWidget({
    Key? key,
    required this.seen,
    required this.word,
    required this.onGrantPressed,
    required this.onSeenPressed,
    this.isLastRole = false,
    required this.onFinishedPressed,
  }) : super(key: key);

  String get buttonText {
    if (!seen) {
      return 'دیدن کلمه';
    } else if (!isLastRole) {
      return 'دیدم';
    } else {
      return 'شروع بازی';
    }
  }

  Function() get onPressed {
    if (!seen) {
      return onSeenPressed;
    } else if (!isLastRole) {
      return onGrantPressed;
    } else {
      return onFinishedPressed;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: !seen
            ? Text("برای دیدن کلمه دکمه رو لمس کن", style: context.textTheme.titleMedium)
            : Text(word, style: context.textTheme.displayMedium),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ),
    );
  }
}
