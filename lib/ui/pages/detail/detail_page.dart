import 'package:airplane/models/destination_model.dart';
import 'package:airplane/routes/route_name.dart';
import 'package:airplane/ui/pages/detail/widgets/destination_detail_card.dart';
import 'package:airplane/ui/pages/detail/widgets/detail_page_footer.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/location_rating.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final destination =
        ModalRoute.of(context)!.settings.arguments as DestinationModel;

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Stack(
        children: [
          SizedBox(
            height: 477,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              destination.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                vertical: defaultVerticalPadding,
                horizontal: defaultHorizontalPadding,
              ),
              children: [
                Image.asset(
                  'assets/icon/icon_emblem.png',
                  height: 24,
                ),
                const SizedBox(
                  height: 256,
                ),
                LocationRating(
                  destination: destination.name,
                  location: destination.city,
                  rating: destination.rating,
                  destinationFontColor: secondaryTextColor,
                  destinationFontSize: 24,
                  destinationFontWeight: semiBold,
                  locationFontColor: secondaryTextColor,
                  locationFontSize: 16,
                  space: 0,
                ),
                const SizedBox(
                  height: 30,
                ),
                const DestinationDetailCard(),
                const SizedBox(
                  height: 30,
                ),
                DetailPageFooter(
                  price: NumberFormat.currency(
                    locale: 'id',
                    symbol: 'IDR ',
                    decimalDigits: 0,
                  ).format(destination.price),
                  buttonTapped: () => Navigator.pushNamed(
                    context,
                    RouteName.chooseSeatPage,
                    arguments: destination,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
