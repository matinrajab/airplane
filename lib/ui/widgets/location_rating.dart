import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/text_list_tile.dart';
import 'package:airplane/ui/widgets/rating.dart';
import 'package:flutter/material.dart';

class LocationRating extends StatelessWidget {
  final String destination;
  final String location;
  final double? destinationFontSize;
  final FontWeight? destinationFontWeight;
  final Color? destinationFontColor;
  final double? locationFontSize;
  final Color? locationFontColor;
  final double? space;
  final double rating;

  const LocationRating({
    super.key,
    required this.destination,
    required this.location,
    this.destinationFontSize = 18,
    this.destinationFontWeight = medium,
    this.destinationFontColor = primaryTextColor,
    this.locationFontSize = 14,
    this.locationFontColor = subtitleTextColor,
    this.space = 5,
    required this.rating,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextListTile(
            title: destination,
            subtitle: location,
            titleFontSize: destinationFontSize,
            titleFontWeight: destinationFontWeight,
            titleFontColor: destinationFontColor,
            subtitleFontSize: locationFontSize,
            subtitleFontColor: locationFontColor,
            space: space,
          ),
        ),
        Rating(
          rating: rating,
          color: destinationFontColor,
        ),
      ],
    );
  }
}
