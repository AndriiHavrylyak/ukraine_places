import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class SettingProfileEvent extends Equatable {}

class SettingProfileInitEvent extends SettingProfileEvent {
  @override
  List<Object?> get props => [];
}

class SettingProfileChangeThemeEvent extends SettingProfileEvent {
  final ThemeMode mode;

  SettingProfileChangeThemeEvent({
    required this.mode,
  });

  @override
  List<Object?> get props => [
        mode,
      ];
}
