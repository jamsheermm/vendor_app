import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendors_app/utils/colors.dart';
import 'package:vendors_app/utils/constants.dart';
import 'package:vendors_app/utils/styles.dart';
import 'package:vendors_app/view/appbar_search_widget.dart';

class VendorAppBar extends StatelessWidget {
  const VendorAppBar({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(Get.width, 100),
      child: Padding(
        padding: const EdgeInsets.only(top: Constants.largePadding),
        child: AppBar(
          leading: InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: const Icon(
              Icons.sort,
              color: AppColors.secondaryColor,
              size: 30,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: Constants.mediumPadding),
              child: Image.asset(
                Constants.addImage,
                scale: 0.8,
              ),
            )
          ],
          title: Text(
            title ?? "",
            style: AppStyles.titleStyleBold,
          ),
          bottom: PreferredSize(
              preferredSize: Size(Get.width, 50), child: AppbarSearchWidget()),
        ),
      ),
    );
  }
}
