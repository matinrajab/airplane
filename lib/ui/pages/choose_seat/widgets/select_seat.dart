import 'package:airplane/cubits/seat_cubit.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SelectSeat extends StatelessWidget {
  final int price;

  const SelectSeat({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeatCubit, List<String>>(
      builder: (context, state) {
        return CardField(
          horizontalPadding: 22,
          child: Column(
            children: [
              // NOTE: SEAT INDICATORS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'A',
                        style: successTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'B',
                        style: successTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        ' ',
                        style: successTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'C',
                        style: successTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'D',
                        style: successTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // NOTE: SEAT 1
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SeatItem(
                      id: 'A1',
                      isAvailable: false,
                    ),
                    const SeatItem(
                      id: 'B1',
                      isAvailable: false,
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '1',
                          style: successTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SeatItem(
                      id: 'C1',
                    ),
                    const SeatItem(
                      id: 'D1',
                    ),
                  ],
                ),
              ),

              // NOTE: SEAT 2
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SeatItem(
                      id: 'A2',
                    ),
                    const SeatItem(
                      id: 'B2',
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '2',
                          style: successTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SeatItem(
                      id: 'C2',
                    ),
                    const SeatItem(
                      id: 'D2',
                    ),
                  ],
                ),
              ),
              // NOTE: SEAT 3
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SeatItem(
                      id: 'A3',
                    ),
                    const SeatItem(
                      id: 'B3',
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '3',
                          style: successTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SeatItem(
                      id: 'C3',
                    ),
                    const SeatItem(
                      id: 'D3',
                    ),
                  ],
                ),
              ),
              // NOTE: SEAT 4
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SeatItem(
                      id: 'A4',
                    ),
                    const SeatItem(
                      id: 'B4',
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '4',
                          style: successTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SeatItem(
                      id: 'C4',
                    ),
                    const SeatItem(
                      id: 'D4',
                    ),
                  ],
                ),
              ),
              // NOTE: SEAT 5
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SeatItem(
                      id: 'A5',
                    ),
                    const SeatItem(
                      id: 'B5',
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '5',
                          style: successTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SeatItem(
                      id: 'C5',
                    ),
                    const SeatItem(
                      id: 'D5',
                    ),
                  ],
                ),
              ),

              // NOTE: YOUR SEAT
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your seat',
                      style: successTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      state.join(', '),
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),

              // NOTE: TOTAL
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: successTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      NumberFormat.currency(
                        locale: 'id',
                        symbol: 'IDR ',
                        decimalDigits: 0,
                      ).format(state.length * price),
                      style: purpleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
