import 'notifier/verify_phone_number_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/custom_pin_code_text_field.dart';class VerifyPhoneNumberScreen extends ConsumerStatefulWidget {const VerifyPhoneNumberScreen({Key? key}) : super(key: key);

@override VerifyPhoneNumberScreenState createState() =>  VerifyPhoneNumberScreenState();

 }
class VerifyPhoneNumberScreenState extends ConsumerState<VerifyPhoneNumberScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 26.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("msg_verify_phone_number".tr, style: theme.textTheme.headlineSmall))), SizedBox(height: 7.v), Align(alignment: Alignment.centerLeft, child: Container(width: 299.h, margin: EdgeInsets.only(left: 1.h, right: 28.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_we_send_a_code_to2".tr, style: CustomTextStyles.titleSmallBluegray500_2), TextSpan(text: "msg_783_enter".tr, style: theme.textTheme.titleSmall)]), textAlign: TextAlign.left))), SizedBox(height: 47.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Consumer(builder: (context, ref, _) {return CustomPinCodeTextField(context: context, controller: ref.watch(verifyPhoneNumberNotifier).otpController, onChanged: (value) {ref.watch(verifyPhoneNumberNotifier).otpController?.text = value;});})), SizedBox(height: 33.v), Text("lbl_resend_code".tr, style: CustomTextStyles.titleMediumPrimarySemiBold), SizedBox(height: 50.v), CustomElevatedButton(text: "lbl_confrim".tr, onPressed: () {onTapConfrim(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.fromLTRB(24.h, 8.v, 311.h, 8.v), onTap: () {onTapArrowLeft(context);}), styleType: Style.bgFill); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the selectVirtualAppScreen when the action is triggered.
onTapConfrim(BuildContext context) { NavigatorService.pushNamed(AppRoutes.selectVirtualAppScreen, ); } 
 }
