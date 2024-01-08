import '../comments_bottomsheet/widgets/comments_item_widget.dart';
import 'models/comments_item_model.dart';
import 'notifier/comments_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CommentsBottomsheet extends ConsumerStatefulWidget {
  const CommentsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  CommentsBottomsheetState createState() => CommentsBottomsheetState();
}

class CommentsBottomsheetState extends ConsumerState<CommentsBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 24.v),
          Text(
            "lbl_24_8k_comments".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 23.v),
          Divider(),
          SizedBox(height: 23.v),
          _buildComments(context),
          SizedBox(height: 24.v),
          _buildAutoLayoutHorizontal(context),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComments(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: ref
                  .watch(commentsNotifier)
                  .commentsModelObj
                  ?.commentsItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            CommentsItemModel model = ref
                    .watch(commentsNotifier)
                    .commentsModelObj
                    ?.commentsItemList[index] ??
                CommentsItemModel();
            return CommentsItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Consumer(
            builder: (context, ref, _) {
              return CustomTextFormField(
                controller: ref.watch(commentsNotifier).commentController,
                hintText: "lbl_add_comment".tr,
                hintStyle: theme.textTheme.bodyMedium!,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 18.v, 18.h, 18.v),
                  child: CustomImageView(
                    imagePath:
                        ImageConstant.imgCategoriesgiftComponentadditionalIcons,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                contentPadding: EdgeInsets.only(
                  left: 18.h,
                  top: 19.v,
                  bottom: 19.v,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(16.h),
            decoration: IconButtonStyleHelper.gradientDeepOrangeAToOrange,
            child: CustomImageView(
              imagePath: ImageConstant.imgAutoLayoutHorizontalOnerrorcontainer,
            ),
          ),
        ),
      ],
    );
  }
}
