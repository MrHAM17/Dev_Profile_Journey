import '../card_added_screen/widgets/cardadded_item_widget.dart';import 'models/cardadded_item_model.dart';import 'notifier/card_added_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';class CardAddedScreen extends ConsumerStatefulWidget {const CardAddedScreen({Key? key}) : super(key: key);

@override CardAddedScreenState createState() =>  CardAddedScreenState();

 }
class CardAddedScreenState extends ConsumerState<CardAddedScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), child: Column(children: [_buildPaymentMethods(context), SizedBox(height: 34.v), _buildPayWithDebitCredit(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 56.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 17.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_payment".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgTelevision, margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 17.v))]); } 
/// Section Widget
Widget _buildPaymentMethods(BuildContext context) { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_payment_methods".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("lbl_add_new_card".tr, style: CustomTextStyles.titleMediumPrimary))]), SizedBox(height: 23.v), Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 28.v);}, itemCount: ref.watch(cardAddedNotifier).cardAddedModelObj?.cardaddedItemList.length ?? 0, itemBuilder: (context, index) {CardaddedItemModel model = ref.watch(cardAddedNotifier).cardAddedModelObj?.cardaddedItemList[index] ?? CardaddedItemModel(); return CardaddedItemWidget(model);});})]); } 
/// Section Widget
Widget _buildPayWithDebitCredit(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_pay_with_debit_credit".tr, style: theme.textTheme.titleMedium), SizedBox(height: 23.v), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), decoration: AppDecoration.outlineBlack9000c.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage27x44, height: 27.v, width: 44.h, radius: BorderRadius.circular(4.h)), Padding(padding: EdgeInsets.only(left: 12.h, top: 3.v), child: Text("msg".tr, style: theme.textTheme.titleMedium)), Spacer(), Container(margin: EdgeInsets.only(top: 3.v, right: 8.h, bottom: 3.v), padding: EdgeInsets.all(1.h), decoration: AppDecoration.outlinePrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Container(height: 11.adaptSize, width: 11.adaptSize, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(5.h))))]))]); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapContinue(context);}); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the confirmPaymentScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.confirmPaymentScreen, ); } 
 }
