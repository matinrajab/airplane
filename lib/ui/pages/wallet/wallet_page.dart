import 'package:airplane/ui/widgets/wallet_card.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 38),
      child: Center(
        child: SingleChildScrollView(
          child: WalletCard(),
        ),
      ),
    );
  }
}
