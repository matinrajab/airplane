import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class MyCircularIndicator {
  static Widget show() {
    return const Center(
      child: SizedBox(
        height: 55,
        width: 55,
        child: Center(
          child: CircularProgressIndicator(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
