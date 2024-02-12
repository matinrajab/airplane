import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class BonusCartItem extends StatelessWidget {
  final String title;
  final String information;
  final double? fontSize;

  const BonusCartItem({
    super.key,
    required this.title,
    required this.information,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: secondaryTextStyle.copyWith(
            fontWeight: light,
          ),
        ),
        Text(
          information,
          style: secondaryTextStyle.copyWith(
            fontSize: fontSize,
            fontWeight: medium,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
