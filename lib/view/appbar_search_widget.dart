import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendors_app/controller/vendor_controller.dart';
import 'package:vendors_app/utils/colors.dart';
import 'package:vendors_app/utils/constants.dart';
import 'package:vendors_app/utils/styles.dart';

class AppbarSearchWidget extends StatelessWidget {
  AppbarSearchWidget({Key? key}) : super(key: key);
  final VendorController _vendorController = Get.put(VendorController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: Constants.largePadding, vertical: 16.0),
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: AppColors.lightGrey)],
          color: AppColors.searchBackgroundLightGrey,
          borderRadius:
              BorderRadius.all(Radius.circular(Constants.borderRadius))),
      child: TextField(
        cursorColor: AppColors.secondaryColor,
        controller: _vendorController.searchTextController,
        decoration: const InputDecoration(
            hintText: Constants.searchHint,
            hintStyle: AppStyles.hintStyle,
            prefixIcon: Icon(CupertinoIcons.search),
            prefixIconColor: AppColors.lightGrey,
            contentPadding:
                EdgeInsets.symmetric(horizontal: Constants.smallPadding),
            border: InputBorder.none),
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
