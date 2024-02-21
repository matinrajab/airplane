import 'package:airplane/models/destination_model.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/ui/pages/auth/sign_in_page.dart';
import 'package:airplane/ui/pages/auth/sign_up_page.dart';
import 'package:airplane/ui/pages/bonus/bonus_page.dart';
import 'package:airplane/ui/pages/checkout/checkout_page.dart';
import 'package:airplane/ui/pages/checkout/success_checkout_page.dart';
import 'package:airplane/ui/pages/choose_seat/choose_seat_page.dart';
import 'package:airplane/ui/pages/detail/detail_page.dart';
import 'package:airplane/ui/pages/get_started/get_started_page.dart';
import 'package:airplane/ui/pages/main/main_page.dart';
import 'package:airplane/ui/pages/setting/setting_page.dart';
import 'package:airplane/ui/pages/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  GetStartedPage.routeName: (context) => const GetStartedPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  SignInPage.routeName: (context) => SignInPage(),
  BonusPage.routeName: (context) => const BonusPage(),
  MainPage.routeName: (context) => MainPage(),
  DetailPage.routeName: (context) => DetailPage(
        destination:
            ModalRoute.of(context)?.settings.arguments as DestinationModel,
      ),
  ChooseSeatPage.routeName: (context) => ChooseSeatPage(
        destination:
            ModalRoute.of(context)?.settings.arguments as DestinationModel,
      ),
  CheckoutPage.routeName: (context) => CheckoutPage(
        transaction:
            ModalRoute.of(context)?.settings.arguments as TransactionModel,
      ),
  SuccessCheckoutPage.routeName: (context) => const SuccessCheckoutPage(),
  SettingPage.routeName: (context) => const SettingPage(),
};
