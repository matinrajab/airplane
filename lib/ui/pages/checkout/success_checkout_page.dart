import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/information.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/image_success.png'),
            SizedBox(
              height: 80,
            ),
            Information(
              title: 'Well Booked 😍',
              information:
                  'Are you ready to explore the new world of experiences?',
            ),
            SizedBox(
              height: 50,
            ),
            MyButton(
              width: 220,
              text: 'My Bookings',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
