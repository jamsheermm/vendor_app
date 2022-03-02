import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vendors_app/controller/bottom_navigation_controller.dart';
import 'package:vendors_app/utils/colors.dart';
import 'package:vendors_app/utils/constants.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({Key? key}) : super(key: key);
  final BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Obx(() => bottomNavigationController.tabs.elementAt(
              bottomNavigationController.bottomNavigationIndex.value)),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            backgroundColor: AppColors.lightGrey,
            items: [
              BottomNavigationBarItem(
                  label: Constants.vendors,
                  icon: Image.asset(
                    Constants.logo,
                    height: Constants.bottomNavigationItemHeight,
                    color: bottomNavigationController
                                .bottomNavigationIndex.value ==
                            0
                        ? AppColors.primaryColor
                        : AppColors.secondaryColor,
                  )),
              BottomNavigationBarItem(
                  label: Constants.showroom,
                  icon: SvgPicture.asset(Constants.showroomImage,
                      color: bottomNavigationController
                                  .bottomNavigationIndex.value ==
                              1
                          ? AppColors.primaryColor
                          : AppColors.secondaryColor))
            ],
            onTap: bottomNavigationController.onTappedBottomNavigationItem,
            currentIndex:
                bottomNavigationController.bottomNavigationIndex.value,
            elevation: 1.0,
          ),
        ));
  }
}
