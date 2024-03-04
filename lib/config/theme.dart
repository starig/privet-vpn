import 'package:flutter/material.dart';
import 'package:privet_vpn/config/colors.dart';
import 'package:privet_vpn/config/constants.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: mainFontName,
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
    iconTheme: IconThemeData(color: AppColors.primaryPurple),
    titleTextStyle: TextStyle(
      color: AppColors.primaryPurple,
      fontSize: 20,
      fontFamily: labelFontName,
    ),
  );
}
