import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/cubits/auth_state.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/card_field_section.dart';
import 'package:airplane/ui/widgets/text_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class PaymentDetail extends StatelessWidget {
  const PaymentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return CardField(
      horizontalPadding: 20,
      child: CardFieldSection(
        title: 'Payment Details',
        space: 16,
        child: Row(
          children: [
            Material(
              color: transparentColor,
              elevation: 15,
              shadowColor: shadowColor,
              borderRadius: BorderRadius.circular(defaultRadius),
              child: Container(
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: const DecorationImage(
                    image: AssetImage('assets/image/image_card.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon/icon_plane.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Pay',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  if(state is AuthSuccess){
                    return TextListTile(
                      title: NumberFormat.currency(
                        locale: 'id',
                        symbol: 'IDR ',
                        decimalDigits: 0,
                      ).format(state.user.balance),
                      subtitle: 'Current Balance',
                    );
                  }else{
                    return const SizedBox();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
