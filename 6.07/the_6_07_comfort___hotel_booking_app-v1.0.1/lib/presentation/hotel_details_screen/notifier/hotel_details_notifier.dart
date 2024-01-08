import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/photos_item_model.dart';import '../models/framenineteen_item_model.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/hotel_details_screen/models/hotel_details_model.dart';part 'hotel_details_state.dart';final hotelDetailsNotifier = StateNotifierProvider<HotelDetailsNotifier, HotelDetailsState>((ref) => HotelDetailsNotifier(HotelDetailsState(selectedDropDownValue: SelectionPopupModel(title: ''), hotelDetailsModelObj: HotelDetailsModel(photosItemList: [PhotosItemModel(rectangle: ImageConstant.imgRectangle7), PhotosItemModel(rectangle: ImageConstant.imgRectangle8), PhotosItemModel(rectangle: ImageConstant.imgRectangle9)], framenineteenItemList: [FramenineteenItemModel(jennyWilson: ImageConstant.imgEllipse1, jennyWilson1: "Jenny Wilson", dec: "Dec 10, 2024", veryniceandcomfortab: "Very nice and comfortable hotel, thank you for accompanying my vacation!"), FramenineteenItemModel(jennyWilson: ImageConstant.imgEllipse148x48, jennyWilson1: "Guy Hawkins", dec: "Dec 10, 2024", veryniceandcomfortab: "Very beautiful hotel, my family and I are very satisfied with the service!"), FramenineteenItemModel(jennyWilson: ImageConstant.imgEllipse11, jennyWilson1: "Kristin Watson", dec: "Dec 10, 2024", veryniceandcomfortab: "The rooms are very comfortable and the natural views are amazing, can't wait to come back again!")], dropdownItemList: [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]))));
/// A notifier that manages the state of a HotelDetails according to the event that is dispatched to it.
class HotelDetailsNotifier extends StateNotifier<HotelDetailsState> {HotelDetailsNotifier(HotelDetailsState state) : super(state);

 }
