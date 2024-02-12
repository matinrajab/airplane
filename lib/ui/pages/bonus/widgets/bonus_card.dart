import 'dart:ui';

import 'package:airplane/ui/pages/bonus/widgets/bonus_card_item.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

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
          padding: EdgeInsets.all(defaultHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: BonusCartItem(
                      title: 'Name',
                      information: 'Matin',
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon/icon_plane.png',
                        width: 24,
                      ),
                      SizedBox(
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
              SizedBox(
                height: 40,
              ),
              BonusCartItem(
                title: 'Balance',
                information: 'IDR 280.000.000',
                fontSize: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
