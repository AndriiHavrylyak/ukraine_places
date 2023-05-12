import 'package:dartz/dartz.dart';

import '../../../../core/common/data/models/error/response_error.dart';
import '../entities/change_theme_entity.dart';
import '../use_cases/change_theme.dart';

abstract class SettingRepository {

  Future<Either<DataFailure, ChangeThemeEntity>> changeTheme(ChangeThemeParams changeThemeParams);
}