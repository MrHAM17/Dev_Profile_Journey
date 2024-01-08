import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_contact_screen/models/add_new_property_contact_model.dart';part 'add_new_property_contact_state.dart';final addNewPropertyContactNotifier = StateNotifierProvider<AddNewPropertyContactNotifier, AddNewPropertyContactState>((ref) => AddNewPropertyContactNotifier(AddNewPropertyContactState(phoneNumberController: TextEditingController(), selectedCountry: CountryPickerUtils.getCountryByPhoneCode('1'), addNewPropertyContactModelObj: AddNewPropertyContactModel())));
/// A notifier that manages the state of a AddNewPropertyContact according to the event that is dispatched to it.
class AddNewPropertyContactNotifier extends StateNotifier<AddNewPropertyContactState> {AddNewPropertyContactNotifier(AddNewPropertyContactState state) : super(state);

 }
