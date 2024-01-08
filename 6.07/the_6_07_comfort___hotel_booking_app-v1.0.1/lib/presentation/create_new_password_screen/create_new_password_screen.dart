import 'notifier/create_new_password_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/core/utils/validation_functions.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_checkbox_button.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_text_form_field.dart';class CreateNewPasswordScreen extends ConsumerStatefulWidget {const CreateNewPasswordScreen({Key? key}) : super(key: key);

@override CreateNewPasswordScreenState createState() =>  CreateNewPasswordScreenState();

 }

// ignore_for_file: must_be_immutable
class CreateNewPasswordScreenState extends ConsumerState<CreateNewPasswordScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 56.v), child: Column(children: [SizedBox(height: 16.v), CustomImageView(imagePath: ImageConstant.imgImage300x300, height: 300.adaptSize, width: 300.adaptSize), SizedBox(height: 58.v), _buildForgotPassword(context)]))))), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildForgotPassword(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_create_your_new".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 23.v), Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(createNewPasswordNotifier).newpasswordController, hintText: "lbl".tr, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgLocationWhiteA700, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), suffix: InkWell(onTap: () {ref.read(createNewPasswordNotifier.notifier).changePasswordVisibility();}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgEyeWhiteA700, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: ref.watch(createNewPasswordNotifier).isShowPassword, contentPadding: EdgeInsets.symmetric(vertical: 21.v));}), SizedBox(height: 24.v), Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(createNewPasswordNotifier).passwordController, hintText: "lbl".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgLocationWhiteA700, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), suffix: InkWell(onTap: () {ref.read(createNewPasswordNotifier.notifier).changePasswordVisibility1();}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgEyeWhiteA700, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: ref.watch(createNewPasswordNotifier).isShowPassword1, contentPadding: EdgeInsets.symmetric(vertical: 21.v));}), SizedBox(height: 24.v), Consumer(builder: (context, ref, _) {return CustomCheckboxButton(text: "lbl_remember_me".tr, value: ref.watch(createNewPasswordNotifier).rememberme, padding: EdgeInsets.symmetric(vertical: 3.v), onChange: (value) {ref.read(createNewPasswordNotifier.notifier).changeCheckBox1(value);});})]); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v)); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
