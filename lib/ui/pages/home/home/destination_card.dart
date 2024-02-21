import 'package:airplane/models/destination_model.dart';
import 'package:airplane/ui/pages/detail/detail_page.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/rating.dart';
import 'package:airplane/ui/widgets/text_list_tile.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destination;

  const DestinationCard({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        DetailPage.routeName,
        arguments: destination,
      ),
      child: SizedBox(
        width: 200,
        child: CardField(
          verticalPadding: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 180,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      image: DecorationImage(
                        image: NetworkImage(
                          destination.imageUrl,
                        ),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 60,
                        padding: const EdgeInsets.only(
                          left: 6,
                          bottom: 7,
                        ),
                        decoration: const BoxDecoration(
                          color: backgroundColor2,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              defaultRadius,
                            ),
                          ),
                        ),
                        child: Rating(rating: destination.rating),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextListTile(
                  title: destination.name,
                  subtitle: destination.city,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
