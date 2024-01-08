import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/transactiontype_item_model.dart';import '../models/layout24_item_model.dart';import '../models/layout25_item_model.dart';import '../models/viewallreviews_item_model.dart';import '../models/propertydetails_item_model.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/property_details_screen/models/property_details_model.dart';part 'property_details_state.dart';final propertyDetailsNotifier = StateNotifierProvider<PropertyDetailsNotifier, PropertyDetailsState>((ref) => PropertyDetailsNotifier(PropertyDetailsState(selectedDropDownValue: SelectionPopupModel(title: ''), propertyDetailsModelObj: PropertyDetailsModel(transactiontypeItemList: List.generate(2, (index) => TransactiontypeItemModel()), layout24ItemList: [Layout24ItemModel(bedroom: ImageConstant.imgMdiBedEmpty, bedroomCounter: "2 Bedroom"), Layout24ItemModel(bedroom: ImageConstant.imgTelevisionPrimary, bedroomCounter: "1 Bathroom"), Layout24ItemModel(bedroom: ImageConstant.imgContrast, bedroomCounter: "2 Bedroom")], dropdownItemList: [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")], layout25ItemList: [Layout25ItemModel(hospitalCounter: "2 Hospital"), Layout25ItemModel(hospitalCounter: "4 Gas stations"), Layout25ItemModel(hospitalCounter: "2 Schools")], viewallreviewsItemList: [ViewallreviewsItemModel(close: ImageConstant.imgClose, text: "4.9", from: "From", text1: "112", reviewers: "reviewers")], propertydetailsItemList: [PropertydetailsItemModel(wingsTower: ImageConstant.imgShape2, price: " 220", month: "/month", wingsTower1: "Wings Tower", text: "4.2", jakartaIndonesia: "Jakarta, Indonesia", skyDandelions: ImageConstant.imgShape1, price1: " 190", month1: "/month", skyDandelions1: "Sky Dandelions ", text1: "4.9", jakartaIndonesia1: "Jakarta, Indonesia"), PropertydetailsItemModel(wingsTower: ImageConstant.imgShape160x144, price: " 220", month: "/month", wingsTower1: "Wings Tower", text: "4.2", jakartaIndonesia: "Jakarta, Indonesia", skyDandelions: ImageConstant.imgShape3, price1: " 220", month1: "/month", skyDandelions1: "Wings Tower", text1: "4.2", jakartaIndonesia1: "Jakarta, Indonesia")]))));
/// A notifier that manages the state of a PropertyDetails according to the event that is dispatched to it.
class PropertyDetailsNotifier extends StateNotifier<PropertyDetailsState> {PropertyDetailsNotifier(PropertyDetailsState state) : super(state);

void onSelectedChipView1(int index, bool value, ) { List<TransactiontypeItemModel> newList = List<TransactiontypeItemModel>.from(state.propertyDetailsModelObj!.transactiontypeItemList); newList[index] = newList[index].copyWith(isSelected: value); state = state.copyWith(propertyDetailsModelObj: state.propertyDetailsModelObj?.copyWith(transactiontypeItemList: newList)); } 
 }
