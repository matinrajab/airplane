import 'package:airplane/cubits/transaction_cubit.dart';
import 'package:airplane/cubits/transaction_state.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/booking_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionSuccess) {
          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(
              24,
              defaultVerticalPadding,
              24,
              90,
            ),
            itemCount: state.transactions.length,
            itemBuilder: (BuildContext context, int index) =>
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: BookingDetailCard(state.transactions[index]),
                ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
