import 'package:airplane/ui/pages/home/home_page.dart';
import 'package:airplane/ui/pages/main/widgets/my_bottom_nav_bar_item.dart';
import 'package:airplane/ui/theme/theme.dart';
import 'package:airplane/ui/widgets/card_field.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<String> _bottomNavBarItems = [
    'assets/icon/icon_home.png',
    'assets/icon/icon_booking.png',
    'assets/icon/icon_card.png',
    'assets/icon/icon_settings.png',
  ];

  final List<Widget> _body = [
    HomePage(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    int index = 0;

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Stack(
        children: [
          SafeArea(
            child: _body[_currentIndex],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _bottomNavBarItems.map(
                      (item) {
                        int tempIndex = index;
                        return Material(
                          color: transparentColor,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              setState(() {
                                _currentIndex = tempIndex;
                              });
                            },
                            child: MyBottomNavBarItem(
                              imageAsset: item,
                              isSelected: index++ == _currentIndex,
                            ),
                          ),
                        );
                      },
                    ).toList(),
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
