import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon/icon_plane.png',
              width: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'AIRPLANE',
              style: secondaryTextStyle.copyWith(
                fontSize: 32,
                fontWeight: medium,
                letterSpacing: 10.08,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
