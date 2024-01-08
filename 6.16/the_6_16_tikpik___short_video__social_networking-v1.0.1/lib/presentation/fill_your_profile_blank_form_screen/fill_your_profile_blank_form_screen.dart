import 'notifier/fill_your_profile_blank_form_notifier.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:flutter/material.dart';import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/core/utils/validation_functions.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_phone_number.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';class FillYourProfileBlankFormScreen extends ConsumerStatefulWidget {const FillYourProfileBlankFormScreen({Key? key}) : super(key: key);

@override FillYourProfileBlankFormScreenState createState() =>  FillYourProfileBlankFormScreenState();

 }

// ignore_for_file: must_be_immutable
class FillYourProfileBlankFormScreenState extends ConsumerState<FillYourProfileBlankFormScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 47.v), child: Column(children: [SizedBox(height: 140.adaptSize, width: 140.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse, height: 140.adaptSize, width: 140.adaptSize, radius: BorderRadius.circular(70.h), alignment: Alignment.center), CustomIconButton(height: 35.adaptSize, width: 35.adaptSize, padding: EdgeInsets.all(2.h), alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgEdit))])), SizedBox(height: 24.v), _buildFullName(context), SizedBox(height: 24.v), _buildName(context), SizedBox(height: 24.v), _buildEmail(context), SizedBox(height: 24.v), _buildPhoneNumber(context), SizedBox(height: 24.v), _buildAddress(context), Spacer(), _buildAutoLayoutHorizontal(context)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_fill_your_profile".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(fillYourProfileBlankFormNotifier).fullNameController, hintText: "lbl_full_name".tr, hintStyle: theme.textTheme.bodyMedium!, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v));}); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(fillYourProfileBlankFormNotifier).nameController, hintText: "lbl_nickname".tr, hintStyle: theme.textTheme.bodyMedium!, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v));}); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(fillYourProfileBlankFormNotifier).emailController, hintText: "lbl_email".tr, hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmark, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v));}); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomPhoneNumber(country: ref.watch(fillYourProfileBlankFormNotifier).selectedCountry ?? CountryPickerUtils.getCountryByPhoneCode('1'), controller: ref.watch(fillYourProfileBlankFormNotifier).phoneNumberController, onTap: (Country value) {ref.watch(fillYourProfileBlankFormNotifier).selectedCountry = value;});}); } 
/// Section Widget
Widget _buildAddress(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(fillYourProfileBlankFormNotifier).addressController, hintText: "lbl_address".tr, hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v));}); } 
/// Section Widget
Widget _buildSkip(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "lbl_skip".tr, margin: EdgeInsets.only(right: 6.h), buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary, onPressed: () {onTapSkip(context);})); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 6.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16)); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildSkip(context), _buildContinue(context)]); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
 }
