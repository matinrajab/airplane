import 'package:airplane/ui/pages/home/home/destination_card.dart';
import 'package:airplane/ui/pages/home/home/destination_tile.dart';
import 'package:airplane/ui/pages/home/home/home_page_header.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String?> _destinations = List.generate(10, (index) => null);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: defaultVerticalPadding,
        bottom: 120,
      ),
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultHorizontalPadding,
          ),
          child: HomePageHeader(),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 325,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 12),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: DestinationCard(),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultHorizontalPadding,
          ),
          child: Text(
            'New This Year',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultHorizontalPadding,
          ),
          child: Column(
            children: _destinations
                .map((e) => Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: DestinationTile(),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
