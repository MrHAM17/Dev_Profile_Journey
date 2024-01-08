import 'notifier/favourite_empty_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_6_17_housit___buyrentsell_property/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_6_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';

class FavouriteEmptyScreen extends ConsumerStatefulWidget {
  const FavouriteEmptyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FavouriteEmptyScreenState createState() => FavouriteEmptyScreenState();
}

class FavouriteEmptyScreenState extends ConsumerState<FavouriteEmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              _buildItemHeader(context),
              Spacer(
                flex: 33,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 92.h),
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.fillGreenA.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder71,
                ),
                child: Container(
                  padding: EdgeInsets.all(20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder55,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 16.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.circleBorder35,
                    ),
                    child: Text(
                      "lbl4".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              Container(
                width: 233.h,
                margin: EdgeInsets.only(
                  left: 46.h,
                  right: 47.h,
                ),
                child: Text(
                  "msg_your_favorite_page".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              Container(
                width: 293.h,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                child: Text(
                  "msg_click_add_button".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              Spacer(
                flex: 66,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_favorite".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgThumbsUp,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildItemHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 7.v,
          ),
          child: Text(
            "lbl_0".tr,
            style: CustomTextStyles.titleMediumRedA200,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            top: 9.v,
            bottom: 8.v,
          ),
          child: Text(
            "lbl_estates".tr,
            style: CustomTextStyles.titleMediumMedium,
          ),
        ),
        Spacer(),
        Container(
          width: 93.h,
          padding: EdgeInsets.symmetric(vertical: 8.v),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 24.v,
                width: 36.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGridOnprimarycontainer,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                height: 24.v,
                width: 36.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconHorizontalBlueGray8000112x12,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
