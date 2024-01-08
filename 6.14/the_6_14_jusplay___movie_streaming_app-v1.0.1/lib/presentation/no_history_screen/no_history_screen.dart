import 'notifier/no_history_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class NoHistoryScreen extends ConsumerStatefulWidget {
  const NoHistoryScreen({Key? key}) : super(key: key);

  @override
  NoHistoryScreenState createState() => NoHistoryScreenState();
}

class NoHistoryScreenState extends ConsumerState<NoHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 180.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup427318934,
                      height: 184.adaptSize,
                      width: 184.adaptSize),
                  SizedBox(height: 31.v),
                  Text("lbl_no_history".tr, style: theme.textTheme.titleMedium),
                  SizedBox(height: 6.v),
                  Text("msg_there_are_currently".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_history".tr));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
