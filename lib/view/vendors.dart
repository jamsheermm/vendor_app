import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendors_app/controller/vendor_controller.dart';
import 'package:vendors_app/model/vendor_view_model.dart';
import 'package:vendors_app/utils/colors.dart';
import 'package:vendors_app/utils/constants.dart';
import 'package:vendors_app/view/app_bar.dart';

class Vendors extends StatelessWidget {
  Vendors({Key? key}) : super(key: key);
  final VendorController _vendorController = Get.put(VendorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: PreferredSize(
          preferredSize: Size(Get.width, 150),
          child: VendorAppBar(title: Constants.vendors)),
      body: ListView.separated(
        separatorBuilder: (context, _) => Container(
            margin:
                EdgeInsets.only(left: Get.width / 10, right: Get.width / 20),
            child: const Divider(
              thickness: 1.0,
              color: AppColors.darkGrey,
            )),
        itemCount: _vendorController.vendorList.length,
        itemBuilder: (context, index) {
          return VendorViewModel(
            vendorDataModel: _vendorController.vendorList[index],
          );
        },
      ),
    );
  }
}
