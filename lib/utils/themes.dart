import 'package:flutter/material.dart';
import 'package:vendors_app/utils/colors.dart';
import 'package:vendors_app/utils/constants.dart';
import 'package:vendors_app/utils/styles.dart';

class AppTheme {
  static ThemeData appLightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          centerTitle: true,
          titleTextStyle: AppStyles.titleStyle),
      fontFamily: Constants.fontFamily , colorScheme: ThemeData().colorScheme.copyWith(
    primary: AppColors.darkGrey,
  ),);
}
