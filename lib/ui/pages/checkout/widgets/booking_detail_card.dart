import 'package:airplane/ui/pages/checkout/widgets/booking_detail.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/image_location_rating.dart';
import 'package:flutter/material.dart';

class BookingDetailCard extends StatelessWidget {
  const BookingDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CardField(
      horizontalPadding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageLocationRating(
            imageAsset: 'assets/image/image_destination1.png',
            destination: 'Lake Ciliwung',
            location: 'Tangerang',
            rating: 4.8,
          ),
          SizedBox(height: 20,),
          BookingDetail(),
        ],
      ),
    );
  }
}
