import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/language_screen/models/language_model.dart';part 'language_state.dart';final languageNotifier = StateNotifierProvider<LanguageNotifier, LanguageState>((ref) => LanguageNotifier(LanguageState(suggested: '', others: '', languageModelObj: LanguageModel(radioList: ["lbl_english_us", "lbl_english_uk"], radioList1: ["lbl_mandarin", "lbl_hindi", "lbl_spanish", "lbl_french", "lbl_arabic", "lbl_bengali"]))));
/// A notifier that manages the state of a Language according to the event that is dispatched to it.
class LanguageNotifier extends StateNotifier<LanguageState> {LanguageNotifier(LanguageState state) : super(state);

void changeRadioButton1(String value) { state = state.copyWith(suggested: value); } 
void changeRadioButton2(String value) { state = state.copyWith(others: value); } 
 }
