import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/cubits/auth_state.dart';
import 'package:airplane/cubits/page_cubit.dart';
import 'package:airplane/ui/pages/auth/sign_in_page.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:airplane/ui/widgets/my_circular_indicator.dart';
import 'package:airplane/ui/widgets/my_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  static const routeName = '/setting';

  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthInitial) {
            Navigator.pushNamedAndRemoveUntil(
                context, SignInPage.routeName, (route) => false);
            context.read<PageCubit>().setCurrentIndex(0);
          } else if (state is AuthFailed) {
            MySnackBar.showSnackBar(
              context,
              message: state.error,
              isSuccess: false,
            );
          }
        },
        builder: (context, state) => (state is AuthLoading)
            ? MyCircularIndicator.show()
            : MyButton(
                width: 220,
                text: 'Sign Out',
                onTap: () => context.read<AuthCubit>().signOut(),
              ),
      ),
    );
  }
}
