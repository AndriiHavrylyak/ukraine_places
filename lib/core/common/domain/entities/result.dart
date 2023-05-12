import 'package:dartz/dartz.dart';

import '../../data/models/error/app_error.dart';
import '../../data/models/error/response_error.dart';

class Result<Data> {
  late Either<AppError, Data> _data;

  Either<AppError, Data> getData() {
    return _data;
  }

  Result(Either<DataFailure, Data> response) {
    response.fold(
      (error) => _data = Left(
        _handleLeft(
          error,
        ),
      ),
      (result) => _data = Right(
        result,
      ),
    );
  }

  //common logics for managing errors
  AppError _handleLeft(DataFailure error) {
    late String message;
    if (error is ResponseError) {
      message = error.getErrorMessage();
    } else if (error is LocalError) {
      message = error.message;
    }
    return AppError(message);
  }
}
