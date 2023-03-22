import 'package:flutter/material.dart';
import 'package:get/get.dart';

showSnackBar(String title,   String message) {
  Get.closeAllSnackbars();

  Get.snackbar(
    title,
    message,
    backgroundColor: Colors.black26,
    icon: const Icon(Icons.warning_amber_rounded),
    barBlur: 20,
  );
}