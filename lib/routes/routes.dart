import 'package:airplane/routes/route_name.dart';
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
  RouteName.splashPage: (context) => const SplashScreen(),
  RouteName.getStartedPage: (context) => const GetStartedPage(),
  RouteName.signUpPage: (context) => SignUpPage(),
  RouteName.signInPage: (context) => SignInPage(),
  RouteName.bonusPage: (context) => const BonusPage(),
  RouteName.mainPage: (context) => MainPage(),
  RouteName.detailPage: (context) => const DetailPage(),
  RouteName.chooseSeatPage: (context) => const ChooseSeatPage(),
  RouteName.checkoutPage: (context) => const CheckoutPage(),
  RouteName.successCheckoutPage: (context) => const SuccessCheckoutPage(),
  RouteName.settingPage: (context) => const SettingPage(),
};