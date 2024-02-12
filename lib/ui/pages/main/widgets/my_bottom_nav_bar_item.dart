import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class MyBottomNavBarItem extends StatelessWidget {
  final String imageAsset;
  final bool isSelected;

  const MyBottomNavBarItem({
    super.key,
    required this.imageAsset,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            imageAsset,
            height: 24,
            color: isSelected ? primaryColor : subtitleTextColor,
          ),
          Image.asset(
            'assets/icon/icon_navbar_selected.png',
            width: 30,
            color: isSelected ? primaryColor : transparentColor,
          ),
        ],
      ),
    );
  }
}
