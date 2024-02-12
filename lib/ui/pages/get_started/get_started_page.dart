import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/image/image_get_started.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Fly Like a Bird',
            style: secondaryTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Explore new world with us and let yourself get an amazing experiences',
            style: secondaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          MyButton(width: 220, text: 'Get Started', onTap: (){},),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
