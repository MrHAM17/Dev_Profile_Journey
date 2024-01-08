import '../profile_page/widgets/fortyseven_item_widget.dart';
import '../profile_page/widgets/profile_item_widget.dart';
import 'models/fortyseven_item_model.dart';
import 'models/profile_item_model.dart';
import 'notifier/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_icon_button.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 30.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildBG(context),
                          SizedBox(height: 16.v),
                          Container(
                              width: 273.h,
                              margin: EdgeInsets.only(left: 51.h, right: 50.h),
                              child: Text("msg_ui_ux_designer".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.titleSmallBluegray400
                                      .copyWith(height: 1.57))),
                          SizedBox(height: 16.v),
                          _buildJobApplied(context),
                          SizedBox(height: 24.v),
                          Divider(color: appTheme.gray300),
                          SizedBox(height: 22.v),
                          _buildAboutMe(context),
                          SizedBox(height: 24.v),
                          _buildSkills2(context),
                          SizedBox(height: 24.v),
                          _buildExperience1(context),
                          SizedBox(height: 24.v),
                          _buildEducation1(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_profile".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3Primary,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
              onTap: () {
                onTapImage1(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildBG(BuildContext context) {
    return SizedBox(
        height: 225.v,
        width: 327.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBg,
              height: 120.v,
              width: 327.h,
              radius: BorderRadius.circular(8.h),
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 87.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.img63,
                        height: 89.adaptSize,
                        width: 89.adaptSize,
                        radius: BorderRadius.circular(44.h)),
                    SizedBox(height: 9.v),
                    Text("msg_gustavo_lipshutz".tr,
                        style: CustomTextStyles.titleMediumBlack900),
                    SizedBox(height: 7.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text("lbl_open_to_work".tr,
                              style: CustomTextStyles
                                  .titleSmallGray500SemiBold_1)),
                      Container(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 10.h, bottom: 3.v),
                          padding: EdgeInsets.all(3.h),
                          decoration: AppDecoration.success.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCheck,
                              height: 9.adaptSize,
                              width: 9.adaptSize,
                              alignment: Alignment.center))
                    ])
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildJobApplied(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 154.h,
              padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 12.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text("lbl_25".tr,
                            style: CustomTextStyles.titleMediumBold_1)),
                    Padding(
                        padding: EdgeInsets.only(top: 5.v),
                        child: Text("lbl_applied".tr,
                            style: theme.textTheme.labelLarge))
                  ])),
          CustomElevatedButton(
              height: 48.v,
              width: 154.h,
              text: "lbl_10".tr,
              margin: EdgeInsets.only(left: 19.h),
              buttonStyle: CustomButtonStyles.fillGrayTL241,
              buttonTextStyle: CustomTextStyles.titleMediumBold_1)
        ]));
  }

  /// Section Widget
  Widget _buildAboutMe(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              _buildSkills(context,
                  skills: "lbl_about_me".tr,
                  editSquare: ImageConstant.imgEditSquare),
              SizedBox(height: 14.v),
              Container(
                  width: 272.h,
                  margin: EdgeInsets.only(right: 22.h),
                  child: Text("msg_lorem_ipsum_dolor8".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallBluegray400
                          .copyWith(height: 1.57)))
            ]));
  }

  /// Section Widget
  Widget _buildSkills2(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 23.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 15.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildSkills(context,
                  skills: "lbl_skills".tr,
                  editSquare: ImageConstant.imgEditSquare)),
          SizedBox(height: 12.v),
          Consumer(builder: (context, ref, _) {
            return Wrap(
                runSpacing: 12.v,
                spacing: 12.h,
                children: List<Widget>.generate(
                    ref
                            .watch(profileNotifier)
                            .profileModelObj
                            ?.fortysevenItemList
                            .length ??
                        0, (index) {
                  FortysevenItemModel model = ref
                          .watch(profileNotifier)
                          .profileModelObj
                          ?.fortysevenItemList[index] ??
                      FortysevenItemModel();
                  return FortysevenItemWidget(model,
                      onSelectedChipView1: (value) {
                    ref
                        .read(profileNotifier.notifier)
                        .onSelectedChipView1(index, value);
                  });
                }));
          }),
          SizedBox(height: 17.v)
        ]));
  }

  /// Section Widget
  Widget _buildExperience1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSkills(context,
                  skills: "lbl_experience".tr,
                  editSquare: ImageConstant.imgEditSquarePrimary),
              SizedBox(height: 22.v),
              Consumer(builder: (context, ref, _) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric(vertical: 11.5.v),
                          child: SizedBox(
                              width: 235.h,
                              child: Divider(
                                  height: 1.v,
                                  thickness: 1.v,
                                  color: appTheme.gray300)));
                    },
                    itemCount: ref
                            .watch(profileNotifier)
                            .profileModelObj
                            ?.profileItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      ProfileItemModel model = ref
                              .watch(profileNotifier)
                              .profileModelObj
                              ?.profileItemList[index] ??
                          ProfileItemModel();
                      return ProfileItemWidget(model);
                    });
              })
            ]));
  }

  /// Section Widget
  Widget _buildEducation1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSkills(context,
                  skills: "lbl_education".tr,
                  editSquare: ImageConstant.imgEditSquarePrimary),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.only(right: 83.h),
                  child: Row(children: [
                    CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFrame162724)),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 12.h, top: 5.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_university_of_oxford".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold),
                                  SizedBox(height: 6.v),
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text("msg_computer_science".tr,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 1.v),
                                        child: Text("lbl2".tr,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_2019".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])
                                ])))
                  ]))
            ]));
  }

  /// Common widget
  Widget _buildSkills(
    BuildContext context, {
    required String skills,
    required String editSquare,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(skills,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: theme.colorScheme.primary))),
      CustomImageView(
          imagePath: editSquare, height: 24.adaptSize, width: 24.adaptSize)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImage1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }
}
