import 'package:airplane/models/destination_model.dart';
import 'package:airplane/routes/route_name.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/image_location_rating.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final DestinationModel destination;

  const DestinationTile({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        RouteName.detailPage,
        arguments: destination,
      ),
      child: CardField(
        verticalPadding: 10,
        horizontalPadding: 12,
        child: ImageLocationRating(
          imageUrl: destination.imageUrl,
          destination: destination.name,
          location: destination.city,
          rating: destination.rating,
        ),
      ),
    );
  }
}
