import 'package:airplane/ui/widgets/card_field_section.dart';
import 'package:airplane/ui/widgets/gallery.dart';
import 'package:flutter/material.dart';

class Galleries extends StatelessWidget {
  Galleries({super.key});

  final List<String> _galleries = [
    'assets/image/image_destination1.png',
    'assets/image/image_destination2.png',
    'assets/image/image_destination3.png',
    'assets/image/image_destination4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CardFieldSection(
      title: 'Photos',
      titleLeftPadding: 20,
      space: 6,
      child: SizedBox(
        height: 70,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          scrollDirection: Axis.horizontal,
          itemCount: _galleries.length,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Gallery(
              imageAsset: _galleries[index],
            ),
          ),
        ),
      ),
    );
  }
}
