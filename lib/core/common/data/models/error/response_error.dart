import 'package:dio/dio.dart';

import '../../../../constants/system_messages.dart';
import 'failure.dart';

abstract class DataFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class LocalError extends DataFailure {
  final String message;

  LocalError(this.message);

  String getMessage() {
    return message;
  }

  @override
  List<Object?> get props => [message];
}

class CacheError extends DataFailure {
  final String message;

  CacheError(this.message);

  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class ResponseError extends DataFailure {
  late int _errorCode = 0;
  late String _message = "";

  ResponseError.withError({required DioError error}) {
    _handleError(error);
  }

  ResponseError.by({required String message, int code = 0}) {
    _errorCode = code;
    _message = message;
  }

  int getErrorCode() {
    return _errorCode;
  }

  String getErrorMessage() {
    return _message;
  }

  String _handleError(DioError error) {
    var code = error.response?.statusCode;
    code ??= 0;
    _errorCode = code;

    switch (error.type) {
      case DioErrorType.cancel:
        _message = AppMessage.requestCanceled;
        break;
      case DioErrorType.connectTimeout:
        _message = AppMessage.connectionTimeOut;
        break;
      case DioErrorType.other:
        _message = error.message;
        break;
      case DioErrorType.receiveTimeout:
        _message = AppMessage.connectionTimeOut;
        break;
      case DioErrorType.response:
        _message = "${error.message} + : $_errorCode";
        break;
      case DioErrorType.sendTimeout:
        _message = AppMessage.requestTimeOut;
        break;
    }
    return _message;
  }

  @override
  List<Object> get props => [_message, _errorCode];
}
