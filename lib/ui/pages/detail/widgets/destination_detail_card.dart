import 'package:airplane/ui/pages/detail/widgets/description.dart';
import 'package:airplane/ui/pages/detail/widgets/galleries.dart';
import 'package:airplane/ui/pages/detail/widgets/interests.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:flutter/material.dart';

class DestinationDetailCard extends StatelessWidget {
  const DestinationDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CardField(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Description(
              description:
                  'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Galleries(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Interests(),
          ),
        ],
      ),
    );
  }
}
