import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final double? titleFontSize;
  final FontWeight? titleFontWeight;
  final Color? titleFontColor;
  final double? subtitleFontSize;
  final Color? subtitleFontColor;
  final double? space;

  const TextListTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.titleFontSize = 18,
    this.titleFontWeight = medium,
    this.titleFontColor = primaryTextColor,
    this.subtitleFontSize = 14,
    this.subtitleFontColor = subtitleTextColor,
    this.space = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: titleFontSize,
            fontWeight: titleFontWeight,
            color: titleFontColor,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: space,
        ),
        Text(
          subtitle,
          style: GoogleFonts.poppins(
            fontSize: subtitleFontSize,
            fontWeight: light,
            color: subtitleFontColor,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
