import 'package:airplane/ui/widgets/card_field_section.dart';
import 'package:airplane/ui/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  Interests({super.key});

  final List<String> _interests = [
    'Kids Park',
    'Honor Bridge',
    'City Museum',
    'Central Mall',
  ];

  @override
  Widget build(BuildContext context) {
    return CardFieldSection(
      title: 'Interests',
      space: 10,
      child: SizedBox(
        height: 60,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 6,
            mainAxisSpacing: 10,
          ),
          itemCount: _interests.length,
          itemBuilder: (_, index) => UnorderedListItem(
            _interests[index],
          ),
        ),
      ),
    );
  }
}
