import 'package:airplane/cubits/gallery_cubit.dart';
import 'package:airplane/ui/widgets/card_field_section.dart';
import 'package:airplane/ui/widgets/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Galleries extends StatelessWidget {
  const Galleries({super.key});

  @override
  Widget build(BuildContext context) {
    return CardFieldSection(
      title: 'Photos',
      titleLeftPadding: 20,
      space: 6,
      child: SizedBox(
        height: 70,
        child: BlocBuilder<GalleryCubit, List<String>>(
          builder: (context, state) {
            if(state.isNotEmpty) {
              return ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                itemCount: state.length,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Gallery(
                    imageUrl: state[index],
                  ),
                ),
              );
            }else{
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
