import 'package:airplane/cubits/seat_cubit.dart';
import 'package:airplane/models/destination_model.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/ui/pages/checkout/checkout_page.dart';
import 'package:airplane/ui/pages/choose_seat/widgets/seat_status.dart';
import 'package:airplane/ui/pages/choose_seat/widgets/select_seat.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/header.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseSeatPage extends StatelessWidget {
  static const routeName = '/choose-seat';

  final DestinationModel destination;

  const ChooseSeatPage({
    super.key,
    required this.destination,
  });

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
            const Header(
              topText: 'Select Your',
              bottomText: 'Favorite Seat',
            ),
            const SizedBox(
              height: 30,
            ),
            const SeatStatus(),
            const SizedBox(
              height: 30,
            ),
            SelectSeat(price: destination.price),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<SeatCubit, List<String>>(
              builder: (context, state) => MyButton(
                text: 'Continue to Checkout',
                onTap: () {
                  int price = destination.price * state.length;

                  Navigator.pushNamed(
                    context,
                    CheckoutPage.routeName,
                    arguments: TransactionModel(
                      destination: destination,
                      amountOfTraveler: state.length,
                      selectedSeats: state.join(', '),
                      insurance: true,
                      refundable: false,
                      vat: 0.45,
                      price: price,
                      grandTotal: price + (price * 0.45).toInt(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
