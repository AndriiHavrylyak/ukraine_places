import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/domain/entities/result.dart';
import '../../../../core/common/domain/use_cases/usecase.dart';
import '../entities/change_theme_entity.dart';
import '../repositories/setting_repository.dart';

class ChangeTheme extends UseCase<ChangeThemeEntity, ChangeThemeParams> {
  SettingRepository settingRepository;

  ChangeTheme(this.settingRepository);

  @override
  Future<Result<ChangeThemeEntity>> call(params) async {
    return Result(await settingRepository.changeTheme(params));
  }
}

class ChangeThemeParams extends Equatable {
  const ChangeThemeParams({
    required this.theme,
  });

  final ThemeMode theme;

  @override
  List<Object?> get props => [theme];
}
