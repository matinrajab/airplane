import 'package:airplane/ui/pages/choose_seat/widgets/seat_status.dart';
import 'package:airplane/ui/pages/choose_seat/widgets/select_seat.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/header.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: defaultVerticalPadding,
            horizontal: defaultHorizontalPadding,
          ),
          children: [
            Header(
              topText: 'Select Your',
              bottomText: 'Favorite Seat',
            ),
            SizedBox(
              height: 30,
            ),
            SeatStatus(),
            SizedBox(
              height: 30,
            ),
            SelectSeat(),
            SizedBox(
              height: 30,
            ),
            MyButton(
              text: 'Continue to Checkout',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
