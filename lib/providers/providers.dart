import 'package:airplane/cubits/destination_cubit.dart';
import 'package:airplane/cubits/gallery_cubit.dart';
import 'package:airplane/cubits/seat_cubit.dart';
import 'package:airplane/cubits/transaction_cubit.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/single_child_widget.dart';
import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/cubits/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final List<SingleChildWidget> providers = [
  BlocProvider<PageCubit>(
    create: (BuildContext context) => PageCubit(),
  ),
  BlocProvider<AuthCubit>(
    create: (BuildContext context) => AuthCubit(),
  ),
  BlocProvider<DestinationCubit>(
    create: (BuildContext context) => DestinationCubit(),
  ),
  BlocProvider<GalleryCubit>(
    create: (BuildContext context) => GalleryCubit(),
  ),
  BlocProvider<SeatCubit>(
    create: (BuildContext context) => SeatCubit(),
  ),
  BlocProvider<TransactionCubit>(
    create: (BuildContext context) => TransactionCubit(),
  ),
];
