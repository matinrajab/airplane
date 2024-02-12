import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class SeatStatus extends StatelessWidget {
  const SeatStatus({super.key});

  Widget buildSeatStatus(String imageAsset, String status) {
    return Row(
      children: [
        Image.asset(
          imageAsset,
          width: 16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          status,
          style: primaryTextStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildSeatStatus(
          'assets/icon/icon_available.png',
          'Available',
        ),
        const SizedBox(width: 10,),
        buildSeatStatus(
          'assets/icon/icon_selected.png',
          'Selected',
        ),
        const SizedBox(width: 10,),
        buildSeatStatus(
          'assets/icon/icon_unavailable.png',
          'Unavailable',
        ),
      ],
    );
  }
}
