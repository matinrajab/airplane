import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  final String imageAsset;

  const Gallery({
    super.key,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        defaultRadius,
      ),
      child: Image.asset(
        imageAsset,
        height: 70,
        width: 70,
        fit: BoxFit.cover,
      ),
    );
  }
}
