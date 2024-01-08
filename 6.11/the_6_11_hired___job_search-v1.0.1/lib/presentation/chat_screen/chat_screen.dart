import 'notifier/chat_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_text_form_field.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends ConsumerState<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 80.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    margin: EdgeInsets.only(bottom: 36.v),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAvatar32x32,
                                              height: 32.adaptSize,
                                              width: 32.adaptSize,
                                              radius:
                                                  BorderRadius.circular(16.h),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height: 8.adaptSize,
                                                  width: 8.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.green600,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.h),
                                                      border: Border.all(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(1),
                                                          width: 1.h))))
                                        ])),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(left: 12.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.h, vertical: 9.v),
                                        decoration: AppDecoration.fillGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL241),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 5.v),
                                              Container(
                                                  width: 164.h,
                                                  margin: EdgeInsets.only(
                                                      right: 14.h),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dolor5"
                                                          .tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .titleSmallBluegray400
                                                          .copyWith(
                                                              height: 1.57)))
                                            ])))
                              ])),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 44.h),
                          child: Text("lbl_15_42_pm".tr,
                              style: CustomTextStyles.labelMediumGray500)),
                      SizedBox(height: 26.v),
                      _buildCard(context),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(right: 80.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    margin: EdgeInsets.only(bottom: 36.v),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAvatar32x32,
                                              height: 32.adaptSize,
                                              width: 32.adaptSize,
                                              radius:
                                                  BorderRadius.circular(16.h),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height: 8.adaptSize,
                                                  width: 8.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.green600,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.h),
                                                      border: Border.all(
                                                          color: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(1),
                                                          width: 1.h))))
                                        ])),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(left: 12.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.h, vertical: 9.v),
                                        decoration: AppDecoration.fillGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL241),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 5.v),
                                              Container(
                                                  width: 164.h,
                                                  margin: EdgeInsets.only(
                                                      right: 14.h),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dolor5"
                                                          .tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .titleSmallBluegray400
                                                          .copyWith(
                                                              height: 1.57)))
                                            ])))
                              ])),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 44.h),
                          child: Text("lbl_15_42_pm".tr,
                              style: CustomTextStyles.labelMediumGray500)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildMessage(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_chance_septimus".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3,
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Padding(
          padding: EdgeInsets.only(left: 97.h),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Expanded(
                child: CustomElevatedButton(
                    height: 46.v,
                    text: "msg_lorem_ipsum_dolor6".tr,
                    buttonStyle: CustomButtonStyles.fillPrimaryTL24,
                    buttonTextStyle:
                        CustomTextStyles.titleSmallOnPrimaryContainer)),
            CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 32.adaptSize,
                width: 32.adaptSize,
                margin: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 7.v))
          ])),
      SizedBox(height: 6.v),
      Padding(
          padding: EdgeInsets.only(right: 44.h),
          child: Text("lbl_15_42_pm".tr,
              style: CustomTextStyles.labelMediumGray500))
    ]);
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(chatNotifier).messageController,
              hintText: "msg_type_your_message".tr,
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.h, vertical: 20.v),
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray300);
        }));
  }

  /// Navigates back to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }
}
