import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendors_app/utils/constants.dart';
import 'package:vendors_app/utils/themes.dart';
import 'package:vendors_app/view/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: AppTheme.appLightTheme,
      home: BottomNavigationView(),
    );
  }
}
