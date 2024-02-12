import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final String title;
  final String information;

  const Information({
    super.key,
    required this.title,
    required this.information,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: primaryTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          information,
          style: subtitleTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
