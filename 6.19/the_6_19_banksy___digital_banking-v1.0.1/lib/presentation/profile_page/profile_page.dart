import 'notifier/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse107,
                height: 139.adaptSize,
                width: 139.adaptSize,
                radius: BorderRadius.circular(
                  69.h,
                ),
              ),
              SizedBox(height: 8.v),
              Consumer(
                builder: (context, ref, _) {
                  return Text(
                    ref.watch(profileNotifier).profileModelObj?.suzaneJobs ??
                        "",
                    style: theme.textTheme.displaySmall,
                  );
                },
              ),
              SizedBox(height: 9.v),
              Consumer(
                builder: (context, ref, _) {
                  return Text(
                    ref.watch(profileNotifier).profileModelObj?.email ?? "",
                    style: CustomTextStyles.titleSmallGray500,
                  );
                },
              ),
              SizedBox(height: 41.v),
              _buildFrameThirtyNine(
                context,
                television: ImageConstant.imgFrame37,
                password: "lbl_password".tr,
              ),
              SizedBox(height: 28.v),
              _buildFrameThirtyEight(context),
              SizedBox(height: 29.v),
              _buildFrameThirtyNine(
                context,
                television: ImageConstant.imgTelevision,
                password: "lbl_languages".tr,
              ),
              SizedBox(height: 27.v),
              _buildFrameThirtyNine(
                context,
                television: ImageConstant.imgInbox,
                password: "lbl_app_information".tr,
              ),
              SizedBox(height: 28.v),
              _buildFrameFortyOne(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGrid,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_profile".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirtyEight(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFingerprint,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 5.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "lbl_touch_id".tr,
            style: CustomTextStyles.titleLargeSemiBold,
          ),
        ),
        Spacer(),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.only(top: 3.v),
              value: ref.watch(profileNotifier).isSelectedSwitch,
              onChange: (value) {
                ref.read(profileNotifier.notifier).changeSwitchBox1(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameFortyOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgContrast,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 2.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "lbl_support".tr,
            style: CustomTextStyles.titleLargeSemiBold,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_5156446981".tr,
            style: CustomTextStyles.bodySmallGray500,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameThirtyNine(
    BuildContext context, {
    required String television,
    required String password,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: television,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            top: 2.v,
            bottom: 3.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            password,
            style: CustomTextStyles.titleLargeSemiBold.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            top: 2.v,
            bottom: 3.v,
          ),
        ),
      ],
    );
  }
}
