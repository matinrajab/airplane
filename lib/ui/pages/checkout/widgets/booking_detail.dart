import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/ui/pages/checkout/widgets/booking_detail_item.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field_section.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingDetail extends StatelessWidget {
  final TransactionModel transaction;

  const BookingDetail(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> bookingDetailItems = [
      {
        'title': 'Traveler',
        'value': '${transaction.amountOfTraveler} person',
        'valueColor': primaryTextColor,
      },
      {
        'title': 'Seat',
        'value': transaction.selectedSeats,
        'valueColor': primaryTextColor,
      },
      {
        'title': 'Insurance',
        'value': transaction.insurance ? 'YES' : 'NO',
        'valueColor': transaction.insurance ? successColor : dangerColor,
      },
      {
        'title': 'Refundable',
        'value': transaction.refundable ? 'YES' : 'NO',
        'valueColor': transaction.refundable ? successColor : dangerColor,
      },
      {
        'title': 'VAT',
        'value': '${(transaction.vat * 100).toStringAsFixed(0)}%',
        'valueColor': primaryTextColor,
      },
      {
        'title': 'Price',
        'value': NumberFormat.currency(
          locale: 'id',
          symbol: 'IDR ',
          decimalDigits: 0,
        ).format(transaction.price),
        'valueColor': primaryTextColor,
      },
      {
        'title': 'Grand Total',
        'value': NumberFormat.currency(
          locale: 'id',
          symbol: 'IDR ',
          decimalDigits: 0,
        ).format(transaction.grandTotal),
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
