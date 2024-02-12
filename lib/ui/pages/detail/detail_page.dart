import 'package:airplane/ui/pages/detail/widgets/destination_detail_card.dart';
import 'package:airplane/ui/pages/detail/widgets/detail_page_footer.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/location_rating.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Stack(
        children: [
          SizedBox(
            height: 477,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/image/image_destination1.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(
                vertical: defaultVerticalPadding,
                horizontal: defaultHorizontalPadding,
              ),
              children: [
                Image.asset(
                  'assets/icon/icon_emblem.png',
                  height: 24,
                ),
                SizedBox(
                  height: 256,
                ),
                LocationRating(
                  destination: 'Lake Ciliwung',
                  location: 'Tangerang',
                  rating: 4.81,
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
                DestinationDetailCard(),
                const SizedBox(
                  height: 30,
                ),
                DetailPageFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
