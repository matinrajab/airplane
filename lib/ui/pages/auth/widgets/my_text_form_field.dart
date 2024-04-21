import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final bool obscureText;

  const MyTextFormField({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: primaryTextStyle,
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          style: primaryTextStyle,
          cursorColor: primaryTextColor,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: inactiveColor),
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: primaryColor),
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            hintText: hintText,
            hintStyle: subtitleTextStyle,
            contentPadding: const EdgeInsets.all(20),
          ),
        ),
      ],
    );
  }
}