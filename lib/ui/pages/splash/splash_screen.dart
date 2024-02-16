import 'dart:async';

import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/routes/route_name.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      User? user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteName.getStartedPage, (route) => false);
      } else {
        print('email: ${user.email}');
        context.read<AuthCubit>().getCurrentUser(user.uid);
        Navigator.pushNamedAndRemoveUntil(
            context, RouteName.mainPage, (route) => false);
      }
    });
    super.initState();
  }

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
