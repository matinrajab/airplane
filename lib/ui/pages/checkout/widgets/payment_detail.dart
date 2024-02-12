import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/card_field_section.dart';
import 'package:airplane/ui/widgets/text_list_tile.dart';
import 'package:flutter/material.dart';

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
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextListTile(
                title: 'IDR 80.400.000',
                subtitle: 'Current Balance',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
