import 'package:dartz/dartz.dart';

import '../../../../core/common/data/models/error/response_error.dart';


abstract class UserSessionRepository {
  Future<Either<DataFailure, String?>> getUserToken();
  Future<Either<DataFailure, String?>> getMasterToken();
}
