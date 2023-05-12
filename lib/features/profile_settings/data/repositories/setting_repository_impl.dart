import 'package:dartz/dartz.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../core/common/data/models/error/response_error.dart';
import '../../domain/entities/change_theme_entity.dart';

import '../../domain/repositories/setting_repository.dart';
import '../../domain/use_cases/change_theme.dart';

class SettingRepositoryImpl extends SettingRepository {
  final Logger logger = Modular.get<Logger>();

  SettingRepositoryImpl();

  @override
  Future<Either<DataFailure, ChangeThemeEntity>> changeTheme(
      ChangeThemeParams changeThemeParams) async {
    try{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('themeMode',changeThemeParams.theme.index );
      return const Right(ChangeThemeEntity(true));
    }catch(e){

      return const Right(ChangeThemeEntity(null));
    }

  }
}
