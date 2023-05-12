import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SettingProfileState extends Equatable {
  final String error;
  final bool isProgress;
  final bool isEnable;
  final ThemeMode themeMode;

  const SettingProfileState({
    this.error = '',
    this.isProgress = false,
    this.isEnable = true,
    this.themeMode = ThemeMode.system,
  });

  SettingProfileState copyWith({
    String? error,
    bool? isProgress,
    bool? isEnable,
    ThemeMode? themeMode,
  }) {
    return SettingProfileState(
      error: error ?? this.error,
      isProgress: isProgress ?? this.isProgress,
      isEnable: isEnable ?? this.isEnable,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  List<Object?> get props => [
        error,
        isProgress,
        isEnable,
        themeMode,
      ];
}
