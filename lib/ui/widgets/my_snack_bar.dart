import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class MySnackBar {
  static void showSnackBar(
    context, {
    required String message,
    required bool isSuccess,
  }) {
    final snackBar = SnackBar(
      backgroundColor: isSuccess ? successColor : dangerColor,
      elevation: 0,
      duration: const Duration(seconds: 2),
      content: Text(
        message,
        style: secondaryTextStyle.copyWith(fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
