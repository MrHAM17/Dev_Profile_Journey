import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/logout_popup_dialog/models/logout_popup_model.dart';
part 'logout_popup_state.dart';

final logoutPopupNotifier =
    StateNotifierProvider<LogoutPopupNotifier, LogoutPopupState>((ref) =>
        LogoutPopupNotifier(
            LogoutPopupState(logoutPopupModelObj: LogoutPopupModel())));

/// A notifier that manages the state of a LogoutPopup according to the event that is dispatched to it.
class LogoutPopupNotifier extends StateNotifier<LogoutPopupState> {
  LogoutPopupNotifier(LogoutPopupState state) : super(state);
}
