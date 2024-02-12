import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rating extends StatelessWidget {
  final double rating;
  final Color? color;

  const Rating({
    super.key,
    required this.rating,
    this.color = primaryTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icon/icon_star.png',
          width: 24,
        ),
        SizedBox(width: 2,),
        Text(
          rating.toStringAsPrecision(2),
          style: GoogleFonts.poppins(
            color: color,
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}
