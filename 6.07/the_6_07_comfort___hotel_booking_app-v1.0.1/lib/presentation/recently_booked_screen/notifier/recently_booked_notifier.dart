import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/recentlybooked_item_model.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/recently_booked_screen/models/recently_booked_model.dart';part 'recently_booked_state.dart';final recentlyBookedNotifier = StateNotifierProvider<RecentlyBookedNotifier, RecentlyBookedState>((ref) => RecentlyBookedNotifier(RecentlyBookedState(recentlyBookedModelObj: RecentlyBookedModel(recentlybookedItemList: [RecentlybookedItemModel(martinezCannes: ImageConstant.imgRectangle4, presidentHotel: "Martinez Cannes", parisFrance: "Paris, France", fortyEight: "4.8", reviews: "(4,378 reviews)", price: "32", night: "/ night")]))));
/// A notifier that manages the state of a RecentlyBooked according to the event that is dispatched to it.
class RecentlyBookedNotifier extends StateNotifier<RecentlyBookedState> {RecentlyBookedNotifier(RecentlyBookedState state) : super(state);

 }
