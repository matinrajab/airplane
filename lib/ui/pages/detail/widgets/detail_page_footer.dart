import 'package:airplane/ui/widgets/text_list_tile.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';

class DetailPageFooter extends StatelessWidget {
  const DetailPageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextListTile(
            title: 'IDR 66.600.000',
            subtitle: 'per orang',
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: MyButton(
            text: 'Book Now',
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
