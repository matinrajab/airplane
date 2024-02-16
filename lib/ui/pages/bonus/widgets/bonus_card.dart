import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/cubits/auth_state.dart';
import 'package:airplane/ui/pages/bonus/widgets/bonus_card_item.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusCard extends StatelessWidget {
  const BonusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: transparentColor,
      elevation: 50,
      shadowColor: shadowColor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34),
          image: const DecorationImage(
            image: AssetImage('assets/image/image_card.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(defaultHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) => BonusCartItem(
                        title: 'Name',
                        information: (state as AuthSuccess).user.name,
                      ),
                    ),
                  ),
                  Row(
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
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) => BonusCartItem(
                  title: 'Balance',
                  information: '${(state as AuthSuccess).user.balance}',
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
