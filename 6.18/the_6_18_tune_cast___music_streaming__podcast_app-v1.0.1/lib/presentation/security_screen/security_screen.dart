import 'notifier/security_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/utils/validation_functions.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_switch.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_text_form_field.dart';class SecurityScreen extends ConsumerStatefulWidget {const SecurityScreen({Key? key}) : super(key: key);

@override SecurityScreenState createState() =>  SecurityScreenState();

 }

// ignore_for_file: must_be_immutable
class SecurityScreenState extends ConsumerState<SecurityScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [_buildAutoLayoutHorizontal(context), SizedBox(height: 33.v), _buildAutoLayoutHorizontal1(context), SizedBox(height: 33.v), _buildAutoLayoutHorizontal2(context), SizedBox(height: 35.v), _buildAutoLayoutHorizontal3(context), SizedBox(height: 31.v), CustomOutlinedButton(text: "lbl_change_pin".tr), SizedBox(height: 24.v), Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(securityNotifier).passwordController, hintText: "lbl_change_password".tr, hintStyle: CustomTextStyles.titleMediumPrimary, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true);}), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "lbl_security".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_remember_me".tr, style: CustomTextStyles.titleMediumPrimarySemiBold_1)), Consumer(builder: (context, ref, _) {return CustomSwitch(value: ref.watch(securityNotifier).isSelectedSwitch, onChange: (value) {ref.read(securityNotifier.notifier).changeSwitchBox1(value);});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_face_id".tr, style: CustomTextStyles.titleMediumPrimarySemiBold_1)), Consumer(builder: (context, ref, _) {return CustomSwitch(value: ref.watch(securityNotifier).isSelectedSwitch1, onChange: (value) {ref.read(securityNotifier.notifier).changeSwitchBox2(value);});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal2(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_biometric_id".tr, style: CustomTextStyles.titleMediumPrimarySemiBold_1)), Consumer(builder: (context, ref, _) {return CustomSwitch(value: ref.watch(securityNotifier).isSelectedSwitch2, onChange: (value) {ref.read(securityNotifier.notifier).changeSwitchBox3(value);});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal3(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("msg_google_authenticator".tr, style: CustomTextStyles.titleMediumPrimarySemiBold_1)), CustomImageView(imagePath: ImageConstant.imgArrowRightOnprimarycontainer, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 3.v))]); } 
 }
