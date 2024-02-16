import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/cubits/page_cubit.dart';
import 'package:airplane/firebase_options.dart';
import 'package:airplane/providers/providers.dart';
import 'package:airplane/routes/routes.dart';
import 'package:airplane/ui/pages/auth/sign_up_page.dart';
import 'package:airplane/ui/pages/bonus/bonus_page.dart';
import 'package:airplane/ui/pages/checkout/checkout_page.dart';
import 'package:airplane/ui/pages/checkout/success_checkout_page.dart';
import 'package:airplane/ui/pages/choose_seat/choose_seat_page.dart';
import 'package:airplane/ui/pages/detail/detail_page.dart';
import 'package:airplane/ui/pages/get_started/get_started_page.dart';
import 'package:airplane/ui/pages/home/home_page.dart';
import 'package:airplane/ui/pages/main/main_page.dart';
import 'package:airplane/ui/pages/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
      ),
    );
  }
}
