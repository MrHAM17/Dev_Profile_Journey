import '../models/thirtytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/app_export.dart';

// ignore: must_be_immutable
class ThirtytwoItemWidget extends StatelessWidget {
  ThirtytwoItemWidget(
    this.thirtytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtytwoItemModel thirtytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256.h,
      child: CustomImageView(
        imagePath: thirtytwoItemModelObj?.frame,
        height: 163.v,
        width: 256.h,
      ),
    );
  }
}
