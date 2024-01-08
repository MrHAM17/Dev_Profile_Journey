import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/profiledetails_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/profile_details_screen/models/profile_details_model.dart';part 'profile_details_state.dart';final profileDetailsNotifier = StateNotifierProvider<ProfileDetailsNotifier, ProfileDetailsState>((ref) => ProfileDetailsNotifier(ProfileDetailsState(profileDetailsModelObj: ProfileDetailsModel(profiledetailsItemList: [ProfiledetailsItemModel(image: ImageConstant.imgImage74, positions: "Ariana Grande - All \nSongs "), ProfiledetailsItemModel(image: ImageConstant.imgImage75, positions: "Ariana Grande - Top \nGreatest Hits")]))));
/// A notifier that manages the state of a ProfileDetails according to the event that is dispatched to it.
class ProfileDetailsNotifier extends StateNotifier<ProfileDetailsState> {ProfileDetailsNotifier(ProfileDetailsState state) : super(state);

 }
