import '../profile_page/widgets/profile_item_widget.dart';
import 'models/profile_item_model.dart';
import 'notifier/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';

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
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            onTapProfileDetails(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1480x80,
                                    height: 80.adaptSize,
                                    width: 80.adaptSize,
                                    radius: BorderRadius.circular(40.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, top: 11.v, bottom: 4.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_rosalia".tr,
                                              style: CustomTextStyles
                                                  .headlineLargeBlack90001),
                                          SizedBox(height: 8.v),
                                          Text("lbl_rose23".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray400)
                                        ]))
                              ])))),
                  SizedBox(height: 26.v),
                  _buildCounts(context),
                  SizedBox(height: 26.v),
                  _buildMenu(context),
                  SizedBox(height: 24.v),
                  _buildProfile(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorDeepPurpleA200,
          margin: EdgeInsets.symmetric(horizontal: 18.h, vertical: 20.v))
    ]);
  }

  /// Section Widget
  Widget _buildCounts(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("lbl_post".tr, style: CustomTextStyles.titleLargeGray500),
            SizedBox(height: 10.v),
            Text("lbl_75".tr, style: CustomTextStyles.titleLargeDeeppurpleA200)
          ]),
          _buildFollowers(context,
              followers: "lbl_following".tr, zipcode: "lbl_3400".tr),
          _buildFollowers(context,
              followers: "lbl_followers".tr, zipcode: "lbl_6500".tr)
        ]));
  }

  /// Section Widget
  Widget _buildMenu(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 16.v),
        decoration: AppDecoration.fillGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMenu,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgPlayCircleOutline,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgQueueMusic,
              height: 40.adaptSize,
              width: 40.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 16.v);
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
        }));
  }

  /// Common widget
  Widget _buildFollowers(
    BuildContext context, {
    required String followers,
    required String zipcode,
  }) {
    return Column(children: [
      Text(followers,
          style: CustomTextStyles.titleLargeGray500
              .copyWith(color: appTheme.gray500)),
      SizedBox(height: 10.v),
      Text(zipcode,
          style: CustomTextStyles.titleLargeDeeppurpleA200
              .copyWith(color: appTheme.deepPurpleA200))
    ]);
  }

  /// Navigates to the detailedProfileScreen when the action is triggered.
  onTapProfileDetails(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailedProfileScreen,
    );
  }
}
