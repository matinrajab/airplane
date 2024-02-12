import 'package:airplane/ui/pages/bonus/widgets/bonus_card.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/information.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BonusCard(),
            SizedBox(
              height: 90,
            ),
            Information(
              title: 'Big Bonus 🎉',
              information: 'We give you early credit so that you can buy a flight ticket',
            ),
            SizedBox(
              height: 50,
            ),
            MyButton(
              width: 220,
              text: 'Start Fly Now',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
