import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendors_app/view/app_bar.dart';

class ShowRoom extends StatelessWidget {
  const ShowRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(Get.width, 150),
          child: VendorAppBar(
            title: "Showroom",
          )),
    );
  }
}
