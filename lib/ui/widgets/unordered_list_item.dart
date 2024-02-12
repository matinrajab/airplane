import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class UnorderedListItem extends StatelessWidget {
  final String text;

  const UnorderedListItem(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icon/icon_check.png',
          width: 16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          text,
          style: primaryTextStyle,
        ),
      ],
    );
  }
}
