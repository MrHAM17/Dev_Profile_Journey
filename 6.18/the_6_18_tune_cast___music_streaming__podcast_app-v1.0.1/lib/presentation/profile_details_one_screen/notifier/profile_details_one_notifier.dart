import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/profiledetailsone_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/profile_details_one_screen/models/profile_details_one_model.dart';part 'profile_details_one_state.dart';final profileDetailsOneNotifier = StateNotifierProvider<ProfileDetailsOneNotifier, ProfileDetailsOneState>((ref) => ProfileDetailsOneNotifier(ProfileDetailsOneState(profileDetailsOneModelObj: ProfileDetailsOneModel(profiledetailsoneItemList: [ProfiledetailsoneItemModel(image: ImageConstant.imgImage74, positions: "Ariana Grande - All \nSongs "), ProfiledetailsoneItemModel(image: ImageConstant.imgImage75, positions: "Ariana Grande - Top \nGreatest Hits")]))));
/// A notifier that manages the state of a ProfileDetailsOne according to the event that is dispatched to it.
class ProfileDetailsOneNotifier extends StateNotifier<ProfileDetailsOneState> {ProfileDetailsOneNotifier(ProfileDetailsOneState state) : super(state);

 }
