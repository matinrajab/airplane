import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/cubits/auth_state.dart';
import 'package:airplane/ui/pages/auth/sign_up_page.dart';
import 'package:airplane/ui/pages/auth/widgets/my_text_form_field.dart';
import 'package:airplane/ui/pages/main/main_page.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/header.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:airplane/ui/widgets/my_circular_indicator.dart';
import 'package:airplane/ui/widgets/my_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/sign-in';

  SignInPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: defaultVerticalPadding,
            horizontal: defaultHorizontalPadding,
          ),
          children: [
            const Header(
              topText: 'Sign In with your',
              bottomText: 'existing account',
            ),
            const SizedBox(
              height: 30,
            ),
            CardField(
              horizontalPadding: 20,
              child: Column(
                children: [
                  MyTextFormField(
                    controller: _emailController,
                    title: 'Email Address',
                    hintText: 'Your Email Address',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyTextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    title: 'Password',
                    hintText: 'Your Password',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is AuthSuccess) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, MainPage.routeName, (route) => false);
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
                            text: 'Sign In',
                            onTap: () => context.read<AuthCubit>().signIn(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                          ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, SignUpPage.routeName),
                child: Text(
                  'Don\'t have an account? Sign Up',
                  style: subtitleTextStyle.copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: subtitleTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
