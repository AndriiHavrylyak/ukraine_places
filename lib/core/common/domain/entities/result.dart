import 'package:dartz/dartz.dart';

import '../../data/models/error/app_error.dart';
import '../../data/models/error/response_error.dart';



class Result<Data> {
  late Either<AppError, Data> _data;

  Either<AppError, Data> getData() {
    return _data;
  }

  Result(Either<DataFailure, Data> response) {
    response.fold((l) => _data = Left(_handleLeft(l)), (r) => _data = Right(r));
  }

  AppError _handleLeft(DataFailure error) {
    //TODO
    late String message;
    if (error is ResponseError) {
      message = error.getErrorMessage();
    } else if (error is LocalError) {
      message = error.message;
    }
    return AppError(message);
  }
}
