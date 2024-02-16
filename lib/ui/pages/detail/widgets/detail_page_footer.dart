import 'package:airplane/ui/widgets/text_list_tile.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';

class DetailPageFooter extends StatelessWidget {
  final String price;
  final GestureTapCallback buttonTapped;

  const DetailPageFooter({
    super.key,
    required this.price,
    required this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextListTile(
            title: price,
            subtitle: 'per orang',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: MyButton(
            text: 'Book Now',
            onTap: buttonTapped,
          ),
        ),
      ],
    );
  }
}
