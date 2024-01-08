import '../history_screen/widgets/history_item_widget.dart';
import 'models/history_item_model.dart';
import 'models/history_model.dart';
import 'notifier/history_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_drop_down.dart';

class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryScreenState createState() => HistoryScreenState();
}

class HistoryScreenState extends ConsumerState<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              _buildFrame(context),
              SizedBox(height: 23.v),
              _buildHistory(context),
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
        imagePath: ImageConstant.imgFavoriteOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_histroy".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Consumer(
          builder: (context, ref, _) {
            return CustomDropDown(
              width: 170.h,
              icon: Container(
                margin: EdgeInsets.only(left: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavoriteOnprimarycontainer12x12,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
              ),
              hintText: "lbl_electric_bill".tr,
              hintStyle: theme.textTheme.headlineMedium!,
              items: ref
                      .watch(historyNotifier)
                      .historyModelObj
                      ?.dropdownItemList ??
                  [],
              onChanged: (value) {
                ref.watch(historyNotifier).selectedDropDownValue = value;
              },
            );
          },
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 8.v,
          ),
          child: Text(
            "lbl_all_time".tr,
            style: CustomTextStyles.labelLargeGray500,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFavoriteGray500,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 3.h,
            top: 14.v,
            bottom: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHistory(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 9.0.v),
              child: SizedBox(
                width: 366.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.blueGray100,
                ),
              ),
            );
          },
          itemCount: ref
                  .watch(historyNotifier)
                  .historyModelObj
                  ?.historyItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            HistoryItemModel model = ref
                    .watch(historyNotifier)
                    .historyModelObj
                    ?.historyItemList[index] ??
                HistoryItemModel();
            return HistoryItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
