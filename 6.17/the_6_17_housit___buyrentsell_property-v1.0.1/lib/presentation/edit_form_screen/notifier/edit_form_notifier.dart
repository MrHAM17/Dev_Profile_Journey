import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/layout15_item_model.dart';import '../models/layout17_item_model.dart';import '../models/shape_item_model.dart';import '../models/layout19_item_model.dart';import '../models/layout21_item_model.dart';import '../models/layout22_item_model.dart';import '../models/seventy_item_model.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/edit_form_screen/models/edit_form_model.dart';part 'edit_form_state.dart';final editFormNotifier = StateNotifierProvider<EditFormNotifier, EditFormState>((ref) => EditFormNotifier(EditFormState(formPasswordController: TextEditingController(), editFormModelObj: EditFormModel(layout15ItemList: List.generate(2, (index) => Layout15ItemModel()), layout17ItemList: List.generate(5, (index) => Layout17ItemModel()), shapeItemList: [ShapeItemModel(shape: ImageConstant.imgShape52), ShapeItemModel(shape: ImageConstant.imgShape53), ShapeItemModel(shape: ImageConstant.imgShape21), ShapeItemModel(shape: ImageConstant.imgShape21)], layout19ItemList: List.generate(2, (index) => Layout19ItemModel()), layout21ItemList: [Layout21ItemModel(bedroom: "Bedroom", text: "2"), Layout21ItemModel(bedroom: "Bathroom", text: "2"), Layout21ItemModel(bedroom: "Balcony", text: "1")], layout22ItemList: List.generate(4, (index) => Layout22ItemModel()), seventyItemList: List.generate(7, (index) => SeventyItemModel())))));
/// A notifier that manages the state of a EditForm according to the event that is dispatched to it.
class EditFormNotifier extends StateNotifier<EditFormState> {EditFormNotifier(EditFormState state) : super(state);

void onSelectedChipView1(int index, bool value, ) { List<Layout15ItemModel> newList = List<Layout15ItemModel>.from(state.editFormModelObj!.layout15ItemList); newList[index] = newList[index].copyWith(isSelected: value); state = state.copyWith(editFormModelObj: state.editFormModelObj?.copyWith(layout15ItemList: newList)); } 
void onSelectedChipView2(int index, bool value, ) { List<Layout17ItemModel> newList = List<Layout17ItemModel>.from(state.editFormModelObj!.layout17ItemList); newList[index] = newList[index].copyWith(isSelected: value); state = state.copyWith(editFormModelObj: state.editFormModelObj?.copyWith(layout17ItemList: newList)); } 
void onSelectedChipView3(int index, bool value, ) { List<Layout19ItemModel> newList = List<Layout19ItemModel>.from(state.editFormModelObj!.layout19ItemList); newList[index] = newList[index].copyWith(isSelected: value); state = state.copyWith(editFormModelObj: state.editFormModelObj?.copyWith(layout19ItemList: newList)); } 
void onSelectedChipView4(int index, bool value, ) { List<Layout22ItemModel> newList = List<Layout22ItemModel>.from(state.editFormModelObj!.layout22ItemList); newList[index] = newList[index].copyWith(isSelected: value); state = state.copyWith(editFormModelObj: state.editFormModelObj?.copyWith(layout22ItemList: newList)); } 
void onSelectedChipView5(int index, bool value, ) { List<SeventyItemModel> newList = List<SeventyItemModel>.from(state.editFormModelObj!.seventyItemList); newList[index] = newList[index].copyWith(isSelected: value); state = state.copyWith(editFormModelObj: state.editFormModelObj?.copyWith(seventyItemList: newList)); } 
 }
