import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double? width;
  final String text;
  final GestureTapCallback onTap;

  const MyButton({
    super.key,
    this.width,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: primaryColor,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(defaultRadius),
          onTap: onTap,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                text,
                style: secondaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}