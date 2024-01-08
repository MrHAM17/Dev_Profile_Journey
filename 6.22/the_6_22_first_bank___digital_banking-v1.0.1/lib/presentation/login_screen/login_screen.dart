import 'notifier/login_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_6_22_first_bank___digital_banking/core/utils/validation_functions.dart';
import 'package:the_6_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_6_22_first_bank___digital_banking/widgets/custom_text_form_field.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends ConsumerState<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 16.h, top: 73.v, right: 16.h),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_welcome_to_firstbank".tr,
                                      style: theme.textTheme.headlineMedium)),
                              SizedBox(height: 16.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_login_your_account".tr,
                                      style: CustomTextStyles
                                          .titleSmallBluegray40001)),
                              SizedBox(height: 24.v),
                              Consumer(builder: (context, ref, _) {
                                return CustomTextFormField(
                                    controller: ref
                                        .watch(loginNotifier)
                                        .emailController,
                                    hintText: "lbl_email".tr,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_email"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 15.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillIndigo,
                                    fillColor: appTheme.indigo50);
                              }),
                              SizedBox(height: 16.v),
                              Consumer(builder: (context, ref, _) {
                                return CustomTextFormField(
                                    controller: ref
                                        .watch(loginNotifier)
                                        .passwordController,
                                    hintText: "lbl_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: InkWell(
                                        onTap: () {
                                          ref
                                              .read(loginNotifier.notifier)
                                              .changePasswordVisibility();
                                        },
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 13.v, 16.h, 13.v),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgAntdesigneyeinvisiblefilled,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 50.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText:
                                        ref.watch(loginNotifier).isShowPassword,
                                    contentPadding: EdgeInsets.only(
                                        left: 16.h, top: 15.v, bottom: 15.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillIndigo,
                                    fillColor: appTheme.indigo50);
                              }),
                              SizedBox(height: 19.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword(context);
                                      },
                                      child: Text("msg_forgot_password".tr,
                                          style: CustomTextStyles
                                              .titleMediumBluegray40001Medium))),
                              SizedBox(height: 40.v),
                              CustomElevatedButton(
                                  text: "lbl_log_in2".tr,
                                  onPressed: () {
                                    onTapLogIn(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(30.h, 17.v, 329.h, 17.v)));
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
