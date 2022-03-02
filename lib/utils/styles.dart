import 'package:flutter/material.dart';
import 'package:vendors_app/utils/colors.dart';
import 'package:vendors_app/utils/constants.dart';

class AppStyles {
  static const titleStyle = TextStyle(
      color: AppColors.secondaryColor,
      fontSize: 20,
      fontFamily: Constants.fontFamily);

  static const titleStyleBold = TextStyle(
      color: AppColors.secondaryColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: Constants.fontFamily);

  static const hintStyle = TextStyle(
      color: AppColors.darkGrey,
      fontSize: 20,
      fontFamily: Constants.fontFamily);
}
