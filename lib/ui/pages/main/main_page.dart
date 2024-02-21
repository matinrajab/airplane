import 'package:airplane/cubits/page_cubit.dart';
import 'package:airplane/ui/pages/home/home_page.dart';
import 'package:airplane/ui/pages/main/widgets/my_bottom_nav_bar_item.dart';
import 'package:airplane/ui/pages/setting/setting_page.dart';
import 'package:airplane/ui/pages/transaction/transaction_page.dart';
import 'package:airplane/ui/pages/wallet/wallet_page.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main';

  MainPage({super.key});

  final List<String> _bottomNavBarItems = [
    'assets/icon/icon_home.png',
    'assets/icon/icon_booking.png',
    'assets/icon/icon_card.png',
    'assets/icon/icon_settings.png',
  ];

  final List<Widget> _body = [
    const HomePage(),
    const TransactionPage(),
    const WalletPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Stack(
        children: [
          SafeArea(
            child: BlocBuilder<PageCubit, int>(
              builder: (context, currentIndex) => _body[currentIndex],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: defaultVerticalPadding,
                horizontal: defaultHorizontalPadding,
              ),
              child: SizedBox(
                height: 60,
                child: CardField(
                  verticalPadding: 0,
                  child: BlocBuilder<PageCubit, int>(
                    builder: (context, currentIndex) {
                      int index = 0;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _bottomNavBarItems.map(
                          (item) {
                            int indexTemp = index;
                            return MyBottomNavBarItem(
                              onTap: () {
                                context
                                    .read<PageCubit>()
                                    .setCurrentIndex(indexTemp);
                              },
                              imageAsset: item,
                              isSelected: index++ == currentIndex,
                            );
                          },
                        ).toList(),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
