import 'package:airplane/ui/widgets/gallery.dart';
import 'package:airplane/ui/widgets/location_rating.dart';
import 'package:flutter/material.dart';

class ImageLocationRating extends StatelessWidget {
  final String imageUrl;
  final String destination;
  final String location;
  final double rating;

  const ImageLocationRating({
    super.key,
    required this.imageUrl,
    required this.destination,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gallery(imageUrl: imageUrl),
        SizedBox(width: 16,),
        Expanded(
          child: LocationRating(
            destination: destination,
            location: location,
            rating: rating,
          ),
        ),
      ],
    );
  }
}
