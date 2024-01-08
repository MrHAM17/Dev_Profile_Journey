import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_switch.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
    this.changeSwitchBox1,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  Function(bool)? changeSwitchBox1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            notificationsItemModelObj.newPost!,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        CustomSwitch(
          value: notificationsItemModelObj.isSelectedSwitch!,
          onChange: (value) {
            changeSwitchBox1?.call(value!);
          },
        ),
      ],
    );
  }
}
