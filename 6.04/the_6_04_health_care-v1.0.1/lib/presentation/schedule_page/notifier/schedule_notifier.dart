import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/schedule_item_model.dart';
import 'package:the_6_04_health_care/presentation/schedule_page/models/schedule_model.dart';
part 'schedule_state.dart';

final scheduleNotifier = StateNotifierProvider<ScheduleNotifier, ScheduleState>(
    (ref) => ScheduleNotifier(ScheduleState(
            scheduleModelObj: ScheduleModel(scheduleItemList: [
          ScheduleItemModel(
              drMarcusHorizon: "Dr. Marcus Horizon",
              chardiologist: "Chardiologist",
              drMarcusHorizon1: ImageConstant.imgEllipse27image46x46,
              date: "26/06/2021",
              time: "10:30 AM",
              confirmed: "Confirmed"),
          ScheduleItemModel(
              drMarcusHorizon: "Dr. Alysa Hana",
              chardiologist: "Psikeater",
              drMarcusHorizon1: ImageConstant.imgEllipse27image2,
              date: "28/06/2021",
              time: "2:00 PM",
              confirmed: "Confirmed")
        ]))));

/// A notifier that manages the state of a Schedule according to the event that is dispatched to it.
class ScheduleNotifier extends StateNotifier<ScheduleState> {
  ScheduleNotifier(ScheduleState state) : super(state);
}
