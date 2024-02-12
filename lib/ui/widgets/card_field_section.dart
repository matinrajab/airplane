import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class CardFieldSection extends StatelessWidget {
  final String title;
  final Widget child;
  final double space;
  final double titleLeftPadding;

  const CardFieldSection({
    super.key,
    required this.title,
    required this.child,
    this.space = 0,
    this.titleLeftPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: titleLeftPadding),
          child: Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
        SizedBox(
          height: space,
        ),
        child,
      ],
    );
  }
}
