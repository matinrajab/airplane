import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String topText;
  final String bottomText;

  const Header({
    super.key,
    required this.topText,
    required this.bottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$topText\n$bottomText',
      style: primaryTextStyle.copyWith(
        fontWeight: semiBold,
        fontSize: 24,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
