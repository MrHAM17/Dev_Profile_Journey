import 'notifier/language_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_radio_button.dart';class LanguageScreen extends ConsumerStatefulWidget {const LanguageScreen({Key? key}) : super(key: key);

@override LanguageScreenState createState() =>  LanguageScreenState();

 }
class LanguageScreenState extends ConsumerState<LanguageScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(height: 829.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 21.v), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 158.v), child: SizedBox(width: 380.h, child: Divider()))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 2.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_suggested".tr, style: theme.textTheme.titleLarge), SizedBox(height: 31.v), _buildGroup386(context), SizedBox(height: 66.v), Text("lbl_language".tr, style: theme.textTheme.titleLarge), SizedBox(height: 21.v), _buildLanguage(context)])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 14.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_language".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildGroup386(BuildContext context) { return Consumer(builder: (context, ref, _) {return Column(children: [CustomRadioButton(width: 382.h, text: "lbl_english_us".tr, value: ref.watch(languageNotifier).languageModelObj?.radioList[0] ?? "", groupValue: ref.watch(languageNotifier).radioGroup, textStyle: CustomTextStyles.titleMediumSemiBold_1, isRightCheck: true, onChange: (value) {ref.read(languageNotifier.notifier).changeRadioButton1(value);}), Padding(padding: EdgeInsets.only(top: 22.v), child: CustomRadioButton(width: 382.h, text: "lbl_english_uk".tr, value: ref.watch(languageNotifier).languageModelObj?.radioList[1] ?? "", groupValue: ref.watch(languageNotifier).radioGroup, textStyle: CustomTextStyles.titleMediumSemiBold_1, isRightCheck: true, onChange: (value) {ref.read(languageNotifier.notifier).changeRadioButton1(value);}))]);}); } 
/// Section Widget
Widget _buildLanguage(BuildContext context) { return Consumer(builder: (context, ref, _) {return Column(children: [CustomRadioButton(width: 382.h, text: "lbl_mandarin".tr, value: ref.watch(languageNotifier).languageModelObj?.radioList1[0] ?? "", groupValue: ref.watch(languageNotifier).language, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.titleMediumSemiBold_1, isRightCheck: true, onChange: (value) {ref.read(languageNotifier.notifier).changeRadioButton2(value);}), Padding(padding: EdgeInsets.only(top: 22.v), child: CustomRadioButton(width: 382.h, text: "lbl_hindi".tr, value: ref.watch(languageNotifier).languageModelObj?.radioList1[1] ?? "", groupValue: ref.watch(languageNotifier).language, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.titleMediumSemiBold_1, isRightCheck: true, onChange: (value) {ref.read(languageNotifier.notifier).changeRadioButton2(value);})), Padding(padding: EdgeInsets.only(top: 22.v), child: CustomRadioButton(width: 382.h, text: "lbl_spanish".tr, value: ref.watch(languageNotifier).languageModelObj?.radioList1[2] ?? "", groupValue: ref.watch(languageNotifier).language, textStyle: CustomTextStyles.titleMediumSemiBold_1, isRightCheck: true, onChange: (value) {ref.read(languageNotifier.notifier).changeRadioButton2(value);})), Padding(padding: EdgeInsets.only(top: 21.v), child: CustomRadioButton(width: 382.h, text: "lbl_french".tr, value: ref.watch(languageNotifier).languageModelObj?.radioList1[3] ?? "", groupValue: ref.watch(languageNotifier).language, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.titleMediumSemiBold_1, isRightCheck: true, onChange: (value) {ref.read(languageNotifier.notifier).changeRadioButton2(value);})), Padding(padding: EdgeInsets.only(top: 22.v), child: CustomRadioButton(width: 382.h, text: "lbl_arabic".tr, value: ref.watch(languageNotifier).languageModelObj?.radioList1[4] ?? "", groupValue: ref.watch(languageNotifier).language, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.titleMediumSemiBold_1, isRightCheck: true, onChange: (value) {ref.read(languageNotifier.notifier).changeRadioButton2(value);})), Padding(padding: EdgeInsets.only(top: 22.v), child: CustomRadioButton(width: 382.h, text: "lbl_bengali".tr, value: ref.watch(languageNotifier).languageModelObj?.radioList1[5] ?? "", groupValue: ref.watch(languageNotifier).language, textStyle: CustomTextStyles.titleMediumSemiBold_1, isRightCheck: true, onChange: (value) {ref.read(languageNotifier.notifier).changeRadioButton2(value);})), Padding(padding: EdgeInsets.only(top: 21.v), child: CustomRadioButton(width: 382.h, text: "lbl_russian".tr, value: ref.watch(languageNotifier).languageModelObj?.radioList1[6] ?? "", groupValue: ref.watch(languageNotifier).language, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.titleMediumSemiBold_1, isRightCheck: true, onChange: (value) {ref.read(languageNotifier.notifier).changeRadioButton2(value);}))]);}); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
