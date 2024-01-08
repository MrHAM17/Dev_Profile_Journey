import 'notifier/form_otp_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_6_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_6_17_housit___buyrentsell_property/widgets/custom_pin_code_text_field.dart';class FormOtpScreen extends ConsumerStatefulWidget {const FormOtpScreen({Key? key}) : super(key: key);

@override FormOtpScreenState createState() =>  FormOtpScreenState();

 }
class FormOtpScreenState extends ConsumerState<FormOtpScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 21.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 28.v), SizedBox(width: 219.h, child: Text("msg_enter_the_verification".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 26.v), Container(width: 272.h, margin: EdgeInsets.only(right: 54.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_enter_thpe_4_digit2".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "lbl_user_email_com".tr, style: CustomTextStyles.bodyMediumBluegray80001_1)]), textAlign: TextAlign.left)), SizedBox(height: 46.v), Consumer(builder: (context, ref, _) {return CustomPinCodeTextField(context: context, controller: ref.watch(formOtpNotifier).otpController, onChanged: (value) {ref.watch(formOtpNotifier).otpController?.text = value;});}), Spacer(), CustomElevatedButton(height: 50.v, width: 87.h, text: "lbl_00_21".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgClock, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL25, buttonTextStyle: CustomTextStyles.bodySmallBluegray80001_2, alignment: Alignment.center), SizedBox(height: 21.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 41.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_didn_t_receive_the".tr, style: theme.textTheme.bodyMedium), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_resend_otp".tr, style: CustomTextStyles.titleSmallPrimaryBold))])))])), bottomNavigationBar: _buildSubmit(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return CustomElevatedButton(text: "lbl_submit".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapSubmit(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the locationEmptyScreen when the action is triggered.
onTapSubmit(BuildContext context) { NavigatorService.pushNamed(AppRoutes.locationEmptyScreen, ); } 
 }
