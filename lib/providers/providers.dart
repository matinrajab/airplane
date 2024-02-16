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
];
