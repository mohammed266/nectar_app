import 'package:flutter/material.dart';

Color kPrimaryColor = const Color(0xFF53B175);
Color kBlackColor = const Color(0xFF181725);
Color kDarkWhiteColor = const Color(0xFFE5E5E5);
Color kWhiteColor = const Color(0xFFFCFCFC);
Color kLightGrayColor = const Color(0xFFF2F3F2);
Color kGrayColor = const Color(0xFF7C7C7C);
Color kDarkGrayColor = const Color(0xFF4C4F4D);

ThemeData theme = ThemeData(
  primaryColor: kPrimaryColor,
  backgroundColor: kWhiteColor,
);

String getAsset(String image) => 'assets/images/$image.png';

double getHeight(BuildContext context, double fraction, {bool subtractAppBar = true}) {
  final mediaQuery = MediaQuery.of(context);
  final appBarHeight = AppBar().preferredSize.height;
  final subtraction = subtractAppBar ? (mediaQuery.padding.top + appBarHeight) : 0;
  return (mediaQuery.size.height - subtraction) / fraction;
}

double getWidth(BuildContext context, double fraction) {
  final mediaQuery = MediaQuery.of(context);
  return (mediaQuery.size.width) / fraction;
}