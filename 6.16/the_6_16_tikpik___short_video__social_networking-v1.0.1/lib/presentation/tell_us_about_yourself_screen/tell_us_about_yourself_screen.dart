import 'notifier/tell_us_about_yourself_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';class TellUsAboutYourselfScreen extends ConsumerStatefulWidget {const TellUsAboutYourselfScreen({Key? key}) : super(key: key);

@override TellUsAboutYourselfScreenState createState() =>  TellUsAboutYourselfScreenState();

 }
class TellUsAboutYourselfScreenState extends ConsumerState<TellUsAboutYourselfScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Container(width: 307.h, margin: EdgeInsets.only(right: 72.h), child: Text("msg_choose_your_identity".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumMedium.copyWith(height: 1.40)))), Spacer(flex: 48), _buildAutoLayoutVertical(context), Spacer(flex: 51), SizedBox(height: 23.v), _buildAutoLayoutHorizontal(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_tell_us_about_yourself".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 12.h), padding: EdgeInsets.symmetric(horizontal: 59.h, vertical: 29.v), decoration: AppDecoration.gradientDeepOrangeAToOrange.copyWith(borderRadius: BorderRadiusStyle.circleBorder89), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 18.v), CustomImageView(imagePath: ImageConstant.imgVector, height: 53.adaptSize, width: 53.adaptSize), SizedBox(height: 21.v), Align(alignment: Alignment.center, child: Text("lbl_male".tr, style: CustomTextStyles.titleLargeOnErrorContainer))]))), Expanded(child: Container(margin: EdgeInsets.only(left: 12.h), padding: EdgeInsets.symmetric(horizontal: 48.h, vertical: 27.v), decoration: AppDecoration.fillDeepOrange.copyWith(borderRadius: BorderRadiusStyle.circleBorder89), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 13.v), CustomImageView(imagePath: ImageConstant.imgLaptop, height: 59.v, width: 35.h), SizedBox(height: 20.v), Text("lbl_female".tr, style: CustomTextStyles.headlineSmallPrimary)])))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomElevatedButton(text: "lbl_skip".tr, margin: EdgeInsets.only(right: 6.h), buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary, onPressed: () {onTapSkip(context);})), Expanded(child: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 6.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapContinue(context);}))]); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the whenIsYourBirthdayScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.whenIsYourBirthdayScreen, ); } 
 }
