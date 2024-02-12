import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/unordered_list_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;

  const BookingDetailItem({
    super.key,
    required this.title,
    required this.value,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UnorderedListItem(title),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontWeight: semiBold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
