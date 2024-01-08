import 'notifier/account_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_01_e_commerce/core/app_export.dart';import 'package:the_6_01_e_commerce/widgets/app_bar/appbar_title.dart';import 'package:the_6_01_e_commerce/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_6_01_e_commerce/widgets/app_bar/custom_app_bar.dart';class AccountPage extends ConsumerStatefulWidget {const AccountPage({Key? key}) : super(key: key);

@override AccountPageState createState() =>  AccountPageState();

 }
class AccountPageState extends ConsumerState<AccountPage> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 11.v), child: Column(children: [_buildAccountOption(context, bagIcon: ImageConstant.imgLockPrimary, order: "lbl_profile".tr, onTapAccountOption: () {onTapAccountOption(context);}), _buildAccountOption(context, bagIcon: ImageConstant.imgBagIcon, order: "lbl_order".tr), _buildAccountOption(context, bagIcon: ImageConstant.imgLinkedin, order: "lbl_address".tr), SizedBox(height: 5.v), _buildAccountOption(context, bagIcon: ImageConstant.imgCreditCardIcon, order: "lbl_payment".tr, onTapAccountOption: () {onTapAccountOption1(context);})])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: AppbarTitle(text: "lbl_account".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNotificationIcon, margin: EdgeInsets.fromLTRB(13.h, 15.v, 13.h, 16.v), onTap: () {onTapNotificationIcon(context);})]); } 
/// Common widget
Widget _buildAccountOption(BuildContext context, {required String bagIcon, required String order, Function? onTapAccountOption, }) { return GestureDetector(onTap: () {onTapAccountOption!.call();}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: bagIcon, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v), child: Text(order, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))))]))); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapNotificationIcon(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationScreen, ); } 
/// Navigates to the profileScreen when the action is triggered.
onTapAccountOption(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileScreen, ); } 
/// Navigates to the addPaymentScreen when the action is triggered.
onTapAccountOption1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addPaymentScreen, ); } 
 }
