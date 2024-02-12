import 'package:airplane/ui/pages/checkout/widgets/booking_detail_item.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field_section.dart';
import 'package:flutter/material.dart';

class BookingDetail extends StatelessWidget {
  const BookingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> bookingDetailItems = [
      {
        'title': 'Traveler',
        'value': '2 person',
        'valueColor': primaryTextColor,
      },
      {
        'title': 'Seat',
        'value': 'A3, B3',
        'valueColor': primaryTextColor,
      },
      {
        'title': 'Insurance',
        'value': 'YES',
        'valueColor': successColor,
      },
      {
        'title': 'Refundable',
        'value': 'NO',
        'valueColor': dangerColor,
      },
      {
        'title': 'VAT',
        'value': '45%',
        'valueColor': primaryTextColor,
      },
      {
        'title': 'Price',
        'value': 'IDR 8.500.000',
        'valueColor': primaryTextColor,
      },
      {
        'title': 'Grand Total',
        'value': 'IDR 12.000.000',
        'valueColor': primaryColor,
      },
    ];

    return CardFieldSection(
      title: 'Booking Details',
      child: Column(
        children: bookingDetailItems
            .map(
              (item) => BookingDetailItem(
                title: item['title'],
                value: item['value'],
                valueColor: item['valueColor'],
              ),
            )
            .toList(),
      ),
    );
  }
}
