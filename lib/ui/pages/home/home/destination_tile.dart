import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/image_location_rating.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  const DestinationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CardField(
      verticalPadding: 10,
      horizontalPadding: 12,
      child: ImageLocationRating(
        imageAsset: 'assets/image/image_destination1.png',
        destination: 'Danau Beratan',
        location: 'Singajara',
        rating: 4.6,
      ),
    );
  }
}
