import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field_section.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;

  const Description({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return CardFieldSection(
      title: 'About',
      space: 6,
      child: Text(
        description,
        style: primaryTextStyle,
      ),
    );
  }
}
