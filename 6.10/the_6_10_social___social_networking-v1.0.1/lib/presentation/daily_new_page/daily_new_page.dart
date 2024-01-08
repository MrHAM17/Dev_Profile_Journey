import '../daily_new_page/widgets/forty_item_widget.dart';
import '../daily_new_page/widgets/profiles1_item_widget.dart';
import 'models/forty_item_model.dart';
import 'models/profiles1_item_model.dart';
import 'notifier/daily_new_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DailyNewPage extends ConsumerStatefulWidget {
  const DailyNewPage({Key? key})
      : super(
          key: key,
        );

  @override
  DailyNewPageState createState() => DailyNewPageState();
}

class DailyNewPageState extends ConsumerState<DailyNewPage>
    with AutomaticKeepAliveClientMixin<DailyNewPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfiles(context),
                    SizedBox(height: 30.v),
                    _buildPost(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfiles(BuildContext context) {
    return SizedBox(
      height: 179.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: ref
                    .watch(dailyNewNotifier)
                    .dailyNewModelObj
                    ?.profiles1ItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              Profiles1ItemModel model = ref
                      .watch(dailyNewNotifier)
                      .dailyNewModelObj
                      ?.profiles1ItemList[index] ??
                  Profiles1ItemModel();
              return Profiles1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPost(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse2150x50,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_avari_kudhra".tr,
                        style: CustomTextStyles.titleMedium18,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_1_hour_ago".tr,
                        style: CustomTextStyles.labelMediumBluegray100,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                  height: 6.v,
                  width: 30.h,
                  margin: EdgeInsets.symmetric(vertical: 22.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 33.v),
          Column(
            children: [
              SizedBox(
                height: 167.v,
                child: Consumer(
                  builder: (context, ref, _) {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: 16.h,
                        );
                      },
                      itemCount: ref
                              .watch(dailyNewNotifier)
                              .dailyNewModelObj
                              ?.fortyItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        FortyItemModel model = ref
                                .watch(dailyNewNotifier)
                                .dailyNewModelObj
                                ?.fortyItemList[index] ??
                            FortyItemModel();
                        return FortyItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 17.v),
              Container(
                width: 340.h,
                margin: EdgeInsets.only(right: 10.h),
                child: Text(
                  "msg_this_is_a_very_rare".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargePrimary.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "lbl_animal".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_forest".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_rabbit".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
