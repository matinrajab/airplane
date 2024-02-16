import 'package:airplane/models/destination_model.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/ui/pages/checkout/widgets/booking_detail.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/image_location_rating.dart';
import 'package:flutter/material.dart';

class BookingDetailCard extends StatelessWidget {
  final TransactionModel transaction;

  const BookingDetailCard(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    DestinationModel destination = transaction.destination;

    return CardField(
      horizontalPadding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageLocationRating(
            imageUrl: destination.imageUrl,
            destination: destination.name,
            location: destination.city,
            rating: destination.rating,
          ),
          SizedBox(
            height: 20,
          ),
          BookingDetail(transaction),
        ],
      ),
    );
  }
}
