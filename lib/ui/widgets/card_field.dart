import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class CardField extends StatelessWidget {
  final double verticalPadding;
  final double horizontalPadding;
  final Widget child;

  const CardField({
    super.key,
    this.verticalPadding = 30.0,
    this.horizontalPadding = 0.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: child,
    );
  }
}
