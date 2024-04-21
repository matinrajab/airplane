import 'package:airplane/cubits/transaction_cubit.dart';
import 'package:airplane/cubits/transaction_state.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/ui/pages/checkout/success_checkout_page.dart';
import 'package:airplane/ui/widgets/booking_detail_card.dart';
import 'package:airplane/ui/pages/checkout/widgets/flight_route.dart';
import 'package:airplane/ui/pages/checkout/widgets/payment_detail.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:airplane/ui/widgets/my_circular_indicator.dart';
import 'package:airplane/ui/widgets/my_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutPage extends StatelessWidget {
  static const routeName = '/checkout';

  final TransactionModel transaction;

  const CheckoutPage({
    super.key,
    required this.transaction,
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
            const FlightRoute(),
            const SizedBox(
              height: 30,
            ),
            BookingDetailCard(transaction),
            const SizedBox(
              height: 30,
            ),
            const PaymentDetail(),
            const SizedBox(
              height: 30,
            ),
            BlocConsumer<TransactionCubit, TransactionState>(
              listener: (context, state) {
                if (state is TransactionSuccess) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, SuccessCheckoutPage.routeName, (route) => false);
                } else if (state is TransactionFailed) {
                  MySnackBar.showSnackBar(
                    context,
                    message: state.error,
                    isSuccess: false,
                  );
                }
              },
              builder: (context, state) => (state is TransactionLoading)
                  ? MyCircularIndicator.show()
                  : MyButton(
                      text: 'Pay Now',
                      onTap: () {
                        context
                            .read<TransactionCubit>()
                            .createTransaction(transaction);
                        context.read<TransactionCubit>().fetchTransactions();
                      }),
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
