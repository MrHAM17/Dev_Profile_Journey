import '../rising_stars_page/widgets/risingstars_item_widget.dart';
import 'models/risingstars_item_model.dart';
import 'notifier/rising_stars_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RisingStarsPage extends ConsumerStatefulWidget {
  const RisingStarsPage({Key? key})
      : super(
          key: key,
        );

  @override
  RisingStarsPageState createState() => RisingStarsPageState();
}

class RisingStarsPageState extends ConsumerState<RisingStarsPage>
    with AutomaticKeepAliveClientMixin<RisingStarsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSeeLive,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgSeeLive,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 17.v),
                _buildRisingstars(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRisingstars(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer(
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
                    .watch(risingStarsNotifier)
                    .risingStarsModelObj
                    ?.risingstarsItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              RisingstarsItemModel model = ref
                      .watch(risingStarsNotifier)
                      .risingStarsModelObj
                      ?.risingstarsItemList[index] ??
                  RisingstarsItemModel();
              return RisingstarsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
