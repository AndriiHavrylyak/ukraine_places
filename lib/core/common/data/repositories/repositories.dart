import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';

import '../models/error/response_error.dart';

Left<DataFailure, Entity> handleResponseError<Entity>(
    Object error, StackTrace stackTrace) {
  switch (error.runtimeType) {
    case DioError:
      error as DioError;
      if (error.type == DioErrorType.connectTimeout) {
        final systemError = error.message;
        const statusCode = 999;

        Modular.get<Logger>().e("Got error : $statusCode -> $systemError");
        Modular.get<Logger>().e("Got stackTrace : $stackTrace");

        return Left(ResponseError.by(message: systemError, code: statusCode));
      }

      final errorResponse = error.response;
      final systemError = error.message;
      final statusCode = errorResponse?.statusCode ?? 0;

      Modular.get<Logger>().e("Got error : $statusCode -> $systemError");
      Modular.get<Logger>().e("Got stackTrace : $stackTrace");

      return Left(ResponseError.withError(error: error));

    default:
      final systemError = error;
      return Left(ResponseError.by(message: "Error: $systemError", code: 0));
  }
}
