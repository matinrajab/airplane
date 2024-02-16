import 'package:airplane/cubits/destination_cubit.dart';
import 'package:airplane/cubits/destination_state.dart';
import 'package:airplane/ui/pages/home/home/destination_card.dart';
import 'package:airplane/ui/pages/home/home/destination_tile.dart';
import 'package:airplane/ui/pages/home/home/home_page_header.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 325,
          child: BlocBuilder<DestinationCubit, DestinationState>(
              builder: (context, state) {
            if (state is DestinationSuccess) {
              return ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                itemCount: state.destinations.length,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: DestinationCard(
                    destination: state.destinations[index],
                  ),
                ),
              );
            } else {
              return const SizedBox();
            }
          }),
        ),
        const SizedBox(
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
          child: BlocBuilder<DestinationCubit, DestinationState>(
              builder: (context, state) {
                if(state is DestinationSuccess){
                  return Column(
                    children: state.destinations
                        .map((destination) => Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: DestinationTile(destination: destination),
                    ))
                        .toList(),
                  );
                }else{
                  return const SizedBox();
                }
              }),
        ),
      ],
    );
  }
}
