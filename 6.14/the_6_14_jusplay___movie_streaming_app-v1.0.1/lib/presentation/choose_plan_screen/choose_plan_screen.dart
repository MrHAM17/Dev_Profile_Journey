import '../choose_plan_screen/widgets/chooseplan_item_widget.dart';
import 'models/chooseplan_item_model.dart';
import 'notifier/choose_plan_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class ChoosePlanScreen extends ConsumerStatefulWidget {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  ChoosePlanScreenState createState() => ChoosePlanScreenState();
}

class ChoosePlanScreenState extends ConsumerState<ChoosePlanScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 25.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          SizedBox(
                              width: 191.h,
                              child: Text("msg_choose_your_favorite".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 20.v),
                          _buildChoosePlan(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.fromLTRB(16.h, 7.v, 324.h, 7.v),
            onTap: () {
              onTapClose(context);
            }));
  }

  /// Section Widget
  Widget _buildChoosePlan(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 32.v);
          },
          itemCount: ref
                  .watch(choosePlanNotifier)
                  .choosePlanModelObj
                  ?.chooseplanItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            ChooseplanItemModel model = ref
                    .watch(choosePlanNotifier)
                    .choosePlanModelObj
                    ?.chooseplanItemList[index] ??
                ChooseplanItemModel();
            return ChooseplanItemWidget(model);
          });
    });
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
