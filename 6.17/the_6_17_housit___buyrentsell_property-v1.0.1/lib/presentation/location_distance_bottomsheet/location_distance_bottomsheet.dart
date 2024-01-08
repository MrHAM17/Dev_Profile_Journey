import '../location_distance_bottomsheet/widgets/locationlist_item_widget.dart';
import 'models/locationlist_item_model.dart';
import 'notifier/location_distance_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LocationDistanceBottomsheet extends ConsumerStatefulWidget {
  const LocationDistanceBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  LocationDistanceBottomsheetState createState() =>
      LocationDistanceBottomsheetState();
}

class LocationDistanceBottomsheetState
    extends ConsumerState<LocationDistanceBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(),
          ),
          SizedBox(height: 32.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 17.v,
                  bottom: 10.v,
                ),
                child: Text(
                  "msg_location_distance".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              CustomElevatedButton(
                height: 50.v,
                width: 76.h,
                text: "lbl_edit".tr,
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
              ),
            ],
          ),
          SizedBox(height: 35.v),
          Consumer(
            builder: (context, ref, _) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 15.v,
                  );
                },
                itemCount: ref
                        .watch(locationDistanceNotifier)
                        .locationDistanceModelObj
                        ?.locationlistItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  LocationlistItemModel model = ref
                          .watch(locationDistanceNotifier)
                          .locationDistanceModelObj
                          ?.locationlistItemList[index] ??
                      LocationlistItemModel();
                  return LocationlistItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          SizedBox(height: 29.v),
        ],
      ),
    );
  }
}
