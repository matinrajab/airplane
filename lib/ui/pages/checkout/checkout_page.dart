import 'package:airplane/ui/pages/checkout/widgets/booking_detail_card.dart';
import 'package:airplane/ui/pages/checkout/widgets/flight_route.dart';
import 'package:airplane/ui/pages/checkout/widgets/payment_detail.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

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
            FlightRoute(),
            const SizedBox(
              height: 30,
            ),
            BookingDetailCard(),
            const SizedBox(
              height: 30,
            ),
            PaymentDetail(),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              text: 'Pay Now',
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Terms and Conditions',
                style: subtitleTextStyle.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
