import 'notifier/profile_settings_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_switch.dart';class ProfileSettingsPage extends ConsumerStatefulWidget {const ProfileSettingsPage({Key? key}) : super(key: key);

@override ProfileSettingsPageState createState() =>  ProfileSettingsPageState();

 }
class ProfileSettingsPageState extends ConsumerState<ProfileSettingsPage> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 30.v), child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Row(children: [SizedBox(height: 80.adaptSize, width: 80.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse80x80, height: 80.adaptSize, width: 80.adaptSize, radius: BorderRadius.circular(40.h), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgEdit, height: 20.adaptSize, width: 20.adaptSize, alignment: Alignment.bottomRight)])), Padding(padding: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_andrew_ainsley".tr, style: theme.textTheme.titleLarge), SizedBox(height: 8.v), Text("lbl_user_domain_com".tr, style: theme.textTheme.titleSmall)]))])), SizedBox(height: 23.v), _buildGetPremium(context), SizedBox(height: 24.v), _buildAutoLayoutHorizontal(context, iconlyCurvedShield: ImageConstant.imgLock, security: "lbl_profile".tr, onTapAutoLayoutHorizontal: () {onTapAutoLayoutHorizontal(context);}), SizedBox(height: 24.v), _buildAutoLayoutHorizontal2(context), SizedBox(height: 24.v), _buildAutoLayoutHorizontal3(context), SizedBox(height: 24.v), _buildAutoLayoutHorizontal4(context), SizedBox(height: 24.v), _buildAutoLayoutHorizontal5(context), SizedBox(height: 24.v), _buildAutoLayoutHorizontal(context, iconlyCurvedShield: ImageConstant.imgIconlyCurvedShield, security: "lbl_security".tr, onTapAutoLayoutHorizontal: () {onTapAutoLayoutHorizontal5(context);}), SizedBox(height: 24.v), _buildAutoLayoutHorizontal7(context), SizedBox(height: 24.v), _buildAutoLayoutHorizontal8(context), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgUserRedA200, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 5.v), child: Text("lbl_logout".tr, style: CustomTextStyles.titleMediumRedA200))]))])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.only(left: 24.h, top: 9.v, bottom: 9.v)), title: AppbarTitle(text: "lbl_profile".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildGetPremium(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 23.h), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 30.v, bottom: 27.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_enjoy_all_benefits".tr, style: CustomTextStyles.headlineSmallWhiteA700), SizedBox(height: 8.v), SizedBox(width: 202.h, child: Text("msg_enjoy_listening".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall)), SizedBox(height: 11.v), CustomElevatedButton(height: 32.v, width: 116.h, text: "lbl_get_premium".tr, buttonStyle: CustomButtonStyles.fillWhiteA, buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer, onPressed: () {onTapGetPremium(context);})])), CustomImageView(imagePath: ImageConstant.imgMusicFococlippingStandard, height: 169.v, width: 115.h, margin: EdgeInsets.only(top: 13.v))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal2(BuildContext context) { return GestureDetector(onTap: () {onTapAutoLayoutHorizontal1(context);}, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(width: 144.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgIconsGray90001, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(top: 2.v, bottom: 3.v), child: Text("lbl_notification".tr, style: CustomTextStyles.titleMediumSemiBold_1))])), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal3(BuildContext context) { return GestureDetector(onTap: () {onTapAutoLayoutHorizontal2(context);}, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgMenu, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 2.v, bottom: 3.v), child: Text("lbl_audio_video".tr, style: CustomTextStyles.titleMediumSemiBold_1))]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal4(BuildContext context) { return GestureDetector(onTap: () {onTapAutoLayoutHorizontal3(context);}, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(width: 124.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgIconlyCurvedPlay, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_playback".tr, style: CustomTextStyles.titleMediumSemiBold_1))])), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal5(BuildContext context) { return GestureDetector(onTap: () {onTapAutoLayoutHorizontal4(context);}, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgIconlyCurvedTick, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 5.v), child: Text("msg_data_saver_storage".tr, style: CustomTextStyles.titleMediumSemiBold_1))]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal7(BuildContext context) { return GestureDetector(onTap: () {onTapAutoLayoutHorizontal6(context);}, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgIconlyCurvedMore, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 5.v), child: Text("lbl_language".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Spacer(), Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_english_us".tr, style: CustomTextStyles.titleMediumSemiBold_1)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 20.h, top: 4.v, bottom: 4.v))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal8(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(width: 139.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgEyeGray90001, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(top: 2.v, bottom: 3.v), child: Text("lbl_dark_mode".tr, style: CustomTextStyles.titleMediumSemiBold_1))])), Consumer(builder: (context, ref, _) {return CustomSwitch(value: ref.watch(profileSettingsNotifier).isSelectedSwitch, onChange: (value) {ref.read(profileSettingsNotifier.notifier).changeSwitchBox1(value);});})]); } 
/// Common widget
Widget _buildAutoLayoutHorizontal(BuildContext context, {required String iconlyCurvedShield, required String security, Function? onTapAutoLayoutHorizontal, }) { return GestureDetector(onTap: () {onTapAutoLayoutHorizontal!.call();}, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: iconlyCurvedShield, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 5.v), child: Text(security, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray90001))), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v))])); } 
/// Navigates to the subscribeScreen when the action is triggered.
onTapGetPremium(BuildContext context) { NavigatorService.pushNamed(AppRoutes.subscribeScreen, ); } 
/// Navigates to the profileDetailsOneScreen when the action is triggered.
onTapAutoLayoutHorizontal(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileDetailsOneScreen, ); } 
/// Navigates to the notificationSettingsScreen when the action is triggered.
onTapAutoLayoutHorizontal1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationSettingsScreen, ); } 
/// Navigates to the audioVideoScreen when the action is triggered.
onTapAutoLayoutHorizontal2(BuildContext context) { NavigatorService.pushNamed(AppRoutes.audioVideoScreen, ); } 
/// Navigates to the playbackScreen when the action is triggered.
onTapAutoLayoutHorizontal3(BuildContext context) { NavigatorService.pushNamed(AppRoutes.playbackScreen, ); } 
/// Navigates to the dataSaverStorageScreen when the action is triggered.
onTapAutoLayoutHorizontal4(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dataSaverStorageScreen, ); } 
/// Navigates to the securityScreen when the action is triggered.
onTapAutoLayoutHorizontal5(BuildContext context) { NavigatorService.pushNamed(AppRoutes.securityScreen, ); } 
/// Navigates to the languageScreen when the action is triggered.
onTapAutoLayoutHorizontal6(BuildContext context) { NavigatorService.pushNamed(AppRoutes.languageScreen, ); } 
 }
