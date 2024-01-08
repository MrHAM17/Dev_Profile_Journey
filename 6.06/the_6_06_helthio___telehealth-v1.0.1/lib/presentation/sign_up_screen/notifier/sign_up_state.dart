// ignore_for_file: must_be_immutable

part of 'sign_up_notifier.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.nameController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.checkbox = false,
    this.signUpModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool checkbox;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        passwordController,
        isShowPassword,
        checkbox,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? checkbox,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      checkbox: checkbox ?? this.checkbox,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
