import 'package:airplane/cubits/auth_cubit.dart';
import 'package:airplane/cubits/auth_state.dart';
import 'package:airplane/ui/pages/auth/widgets/my_text_form_field.dart';
import 'package:airplane/ui/pages/bonus/bonus_page.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/header.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:airplane/ui/widgets/my_circular_indicator.dart';
import 'package:airplane/ui/widgets/my_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = '/sign-up';

  SignUpPage({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _hobbyController = TextEditingController();

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
              topText: 'Join us and get',
              bottomText: 'your next journey',
            ),
            const SizedBox(
              height: 30,
            ),
            CardField(
              horizontalPadding: 20,
              child: Column(
                children: [
                  MyTextFormField(
                    controller: _nameController,
                    title: 'Full Name',
                    hintText: 'Your Full Name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                    height: 20,
                  ),
                  MyTextFormField(
                    controller: _hobbyController,
                    title: 'Hobby',
                    hintText: 'Your Hobby',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is AuthSuccess) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, BonusPage.routeName, (route) => false);
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
                            text: 'Get Started',
                            onTap: () => context.read<AuthCubit>().signUp(
                                  email: _emailController.text.trim(),
                                  password: _passwordController.text.trim(),
                                  name: _nameController.text.trim(),
                                  hobby: _hobbyController.text.trim(),
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
                onTap: () => Navigator.pop(context),
                child: Text(
                  'Have an account? Sign In',
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
