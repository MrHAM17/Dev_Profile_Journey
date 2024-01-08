import 'notifier/create_new_password_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/core/utils/validation_functions.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/reset_password_successful_dialog/reset_password_successful_dialog.dart';class CreateNewPasswordScreen extends ConsumerStatefulWidget {const CreateNewPasswordScreen({Key? key}) : super(key: key);

@override CreateNewPasswordScreenState createState() =>  CreateNewPasswordScreenState();

 }

// ignore_for_file: must_be_immutable
class CreateNewPasswordScreenState extends ConsumerState<CreateNewPasswordScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.only(left: 24.h, top: 117.v, right: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_create_your_new".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 25.v), Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(createNewPasswordNotifier).newpasswordController, hintText: "msg_enter_new_password".tr, hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 22.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), suffix: InkWell(onTap: () {ref.read(createNewPasswordNotifier.notifier).changePasswordVisibility();}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 22.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: ref.watch(createNewPasswordNotifier).isShowPassword);}), SizedBox(height: 24.v), Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(createNewPasswordNotifier).newpasswordController1, hintText: "msg_confirm_new_password".tr, hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 22.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), suffix: InkWell(onTap: () {ref.read(createNewPasswordNotifier.notifier).changePasswordVisibility1();}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 22.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: ref.watch(createNewPasswordNotifier).isShowPassword1);}), SizedBox(height: 24.v), CustomElevatedButton(text: "lbl_continue".tr, buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapContinue(context);}), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_create_new_password".tr, margin: EdgeInsets.only(left: 16.h))); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a dialog with the [ResetPasswordSuccessfulDialog] content.
onTapContinue(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: ResetPasswordSuccessfulDialog(),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
