import 'notifier/notification_settings_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';class NotificationSettingsScreen extends ConsumerStatefulWidget {const NotificationSettingsScreen({Key? key}) : super(key: key);

@override NotificationSettingsScreenState createState() =>  NotificationSettingsScreenState();

 }
class NotificationSettingsScreenState extends ConsumerState<NotificationSettingsScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 29.v), child: Column(children: [_buildAutoLayoutHorizontal(context), SizedBox(height: 27.v), _buildAutoLayoutHorizontal1(context), SizedBox(height: 29.v), _buildAutoLayoutHorizontal2(context), SizedBox(height: 26.v), _buildAutoLayoutHorizontal3(context), SizedBox(height: 28.v), _buildAutoLayoutHorizontal4(context), SizedBox(height: 26.v), _buildAutoLayoutHorizontal5(context), SizedBox(height: 26.v), _buildAutoLayoutHorizontal6(context), SizedBox(height: 28.v), _buildAutoLayoutHorizontal7(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "msg_notification_settings".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_recommended_music".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 7.v), Text("lbl_push_email".tr, style: CustomTextStyles.titleSmallMedium)]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 13.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_new_music".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 6.v), Text("lbl_push".tr, style: CustomTextStyles.titleSmallMedium)]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 12.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal2(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_playlist_updates".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 5.v), Text("lbl_push_email".tr, style: CustomTextStyles.titleSmallMedium)]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 11.v, bottom: 13.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal3(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_concert_notifications".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 7.v), Text("lbl_push_email".tr, style: CustomTextStyles.titleSmallMedium)]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 13.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal4(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_artist_updates".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 5.v), Text("lbl_push_email".tr, style: CustomTextStyles.titleSmallMedium)]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 11.v, bottom: 13.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal5(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_product_news".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 6.v), Text("lbl_email".tr, style: CustomTextStyles.titleSmallMedium)]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 13.v, bottom: 12.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal6(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_hearme_offers".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 7.v), Text("lbl_push_email".tr, style: CustomTextStyles.titleSmallMedium)]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 13.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal7(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_new_episodes".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 5.v), Text("lbl_push_email".tr, style: CustomTextStyles.titleSmallMedium)]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 11.v, bottom: 13.v))]); } 
 }
