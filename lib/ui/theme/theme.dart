import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultHorizontalPadding = 24.0;
const double defaultVerticalPadding = 30.0;
const double defaultRadius = 18.0;

const Color primaryColor = Color(0xff5C40CC);
const Color primaryTextColor = Color(0xff1F1449);
const Color secondaryTextColor = Color(0xffFFFFFF);
const Color subtitleTextColor = Color(0xff9698A9);
const Color successColor = Color(0xff0EC3AE);
const Color dangerColor = Color(0xffEB70A5);
const Color backgroundColor1 = Color(0xffFAFAFA);
const Color backgroundColor2 = Color(0xffFFFFFF);
const Color inactiveColor = Color(0xffDBD7EC);
const Color transparentColor = Colors.transparent;
const Color availableColor = Color(0xffE0D9FF);
const Color unavailableColor = Color(0xffEBECF1);
Color shadowColor = const Color(0xff5445E5).withOpacity(0.3);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);
TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);
TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleTextColor,
);
TextStyle successTextStyle = GoogleFonts.poppins(
  color: successColor,
);
TextStyle dangerTextStyle = GoogleFonts.poppins(
  color: dangerColor,
);
TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semiBold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;
const FontWeight extraBold = FontWeight.w800;
const FontWeight black = FontWeight.w900;