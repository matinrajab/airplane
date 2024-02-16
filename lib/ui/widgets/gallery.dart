import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  final String imageUrl;

  const Gallery({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        defaultRadius,
      ),
      child: Image.network(
        imageUrl,
        height: 70,
        width: 70,
        fit: BoxFit.cover,
      ),
    );
  }
}
