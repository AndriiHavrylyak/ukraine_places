import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/use_cases/change_theme.dart';
import 'setting_profile_event.dart';
import 'setting_profile_state.dart';

class SettingProfileBloc
    extends Bloc<SettingProfileEvent, SettingProfileState> {
  final ChangeTheme _changeTheme = Modular.get<ChangeTheme>();

  SettingProfileBloc() : super(const SettingProfileState()) {
    on<SettingProfileChangeThemeEvent>((event, emit) async {
      await _changeThemeEvent(event, emit);
    });

    on<SettingProfileInitEvent>((event, emit) async {
      await _initEvent(event, emit);
    });
  }


  Future<void> _initEvent(
      SettingProfileInitEvent event,
      Emitter<SettingProfileState> emit,
      ) async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt('themeMode') ?? ThemeMode.system.index;
    emit(state.copyWith(
      isProgress: false,
      themeMode: getThemeModeFromIndex(themeIndex),
    ));
  }


  Future<void> _changeThemeEvent(
    SettingProfileChangeThemeEvent event,
    Emitter<SettingProfileState> emit,
  ) async {
    var changeThemeResponse = await _changeTheme(ChangeThemeParams(
      theme: event.mode,
    ));
    changeThemeResponse.getData().fold((error) {
      emit(state.copyWith(
        isProgress: true,
      ));
    }, (themeEntity) {
      emit(state.copyWith(
        isProgress: false,
        themeMode: event.mode,
      ));
    });
  }
}


ThemeMode getThemeModeFromIndex(int index) {
  switch (index) {
    case 0:
      return ThemeMode.system;
    case 1:
      return ThemeMode.light;
    case 2:
      return ThemeMode.dark;
    default:
      return ThemeMode.system;
  }
}