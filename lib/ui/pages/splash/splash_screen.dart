import 'dart:async';

import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/cubits/destination_cubit.dart';
import 'package:airplane/cubits/gallery_cubit.dart';
import 'package:airplane/cubits/transaction_cubit.dart';
import 'package:airplane/ui/pages/get_started/get_started_page.dart';
import 'package:airplane/ui/pages/main/main_page.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';

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
            context, GetStartedPage.routeName, (route) => false);
      } else {
        context.read<AuthCubit>().getCurrentUser(user.uid);
        context.read<DestinationCubit>().fetchDestinations();
        context.read<GalleryCubit>().fetchGallery();
        context.read<TransactionCubit>().fetchTransactions();
        Navigator.pushNamedAndRemoveUntil(
            context, MainPage.routeName, (route) => false);
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
