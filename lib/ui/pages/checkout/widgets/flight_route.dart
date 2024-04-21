import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class FlightRoute extends StatelessWidget {
  const FlightRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Image.asset('assets/image/image_checkout.png'),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CGK',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Tangerang',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: light,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'TLC',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Ciliwung',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
