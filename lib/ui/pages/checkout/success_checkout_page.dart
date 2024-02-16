import 'package:airplane/cubits/page_cubit.dart';
import 'package:airplane/routes/route_name.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/information.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/image_success.png'),
            const SizedBox(
              height: 80,
            ),
            const Information(
              title: 'Well Booked 😍',
              information:
                  'Are you ready to explore the new world of experiences?',
            ),
            const SizedBox(
              height: 50,
            ),
            MyButton(
              width: 220,
              text: 'My Bookings',
              onTap: () {
                context.read<PageCubit>().setCurrentIndex(1);
                Navigator.pushNamedAndRemoveUntil(
                    context, RouteName.mainPage, (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
