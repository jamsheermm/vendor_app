import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendors_app/view/showroom.dart';
import 'package:vendors_app/view/vendors.dart';

class BottomNavigationController extends GetxController {
  final List<Widget> tabs = [Vendors(), const ShowRoom()];
  RxInt bottomNavigationIndex = 0.obs;

  void onTappedBottomNavigationItem(int index) {
    bottomNavigationIndex.value = index;
  }
}
