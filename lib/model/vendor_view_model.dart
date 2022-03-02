import 'package:flutter/material.dart';
import 'package:vendors_app/model/vendor_data_model.dart';
import 'package:vendors_app/utils/colors.dart';
import 'package:vendors_app/utils/styles.dart';

class VendorViewModel extends StatelessWidget {
  const VendorViewModel({Key? key, this.vendorDataModel}) : super(key: key);
  final VendorDataModel? vendorDataModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: AppColors.darkGrey,radius: 25,
      ),
      title: Text(vendorDataModel!.name!, style: AppStyles.titleStyleBold
        ,),
      subtitle: Text(vendorDataModel!.address ?? ""),
    );
  }
}
