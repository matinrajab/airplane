import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/header.dart';
import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Header(
                topText: 'Howdy,',
                bottomText: 'Kezie Anne',
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('assets/image/image_profile.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'Where to fly today?',
          style: subtitleTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
        ),
      ],
    );
  }
}
