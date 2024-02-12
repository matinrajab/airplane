import 'package:airplane/ui/pages/auth/widgets/my_text_form_field.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:airplane/ui/widgets/header.dart';
import 'package:airplane/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
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
                  MyButton(
                    text: 'Get Started',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Terms and Conditions',
                style: subtitleTextStyle.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
