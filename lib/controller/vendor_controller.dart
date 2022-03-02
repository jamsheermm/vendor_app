import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vendors_app/model/vendor_data_model.dart';

class VendorController extends GetxController {
  final TextEditingController searchTextController = TextEditingController();
  final List<VendorDataModel> vendorList = [];

  @override
  void onInit() {
    populateVendorList();
    super.onInit();
  }

  void populateVendorList() {
    //  Adding dummy data twice to vendor list.
    for (int i = 0; i < 2; i++) {
      vendorList.addAll([
        VendorDataModel(
            name: "Kolour Koncepts Intl.",
            address: "Bangalore, India",
            imageUrl: ""),
        VendorDataModel(
            name: "Apparel Promoters",
            address: "Chittagong, Bangladesh",
            imageUrl: ""),
        VendorDataModel(
            name: "YJC China Co.", address: "Guangzhou, China", imageUrl: ""),
        VendorDataModel(
            name: "Smart Tekstil", address: "Istanbul, Turkey", imageUrl: ""),
        VendorDataModel(
            name: "Khimjee Industries Ltd.",
            address: "Delhi, India",
            imageUrl: ""),
        VendorDataModel(
            name: "C and S Medical Equipment Group",
            address: "Phnom Penh, Cambodia",
            imageUrl: ""),
        VendorDataModel(
            name: "Sara footwear Co. Ltd.",
            address: "Bangalore, India",
            imageUrl: ""),
      ]);
    }
  }
}
