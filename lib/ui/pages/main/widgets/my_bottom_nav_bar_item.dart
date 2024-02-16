import 'package:airplane/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class MyBottomNavBarItem extends StatelessWidget {
  final GestureTapCallback onTap;
  final String imageAsset;
  final bool isSelected;

  const MyBottomNavBarItem({
    super.key,
    required this.onTap,
    required this.imageAsset,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: transparentColor,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: SizedBox(
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
        ),
      ),
    );
  }
}
