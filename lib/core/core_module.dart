import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'config/build_environment.dart';

class CoreModule extends Module {
  static final CoreModule _instance = CoreModule._internal();

  factory CoreModule() {
    return _instance;
  }

  CoreModule._internal();

  static Dio dioInstance() {
    var dio = Dio(BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout: 30 * 1000,
      // 30 seconds
      receiveTimeout: 30 * 1000,
      // 30 seconds
      sendTimeout: 30 * 1000,
      // 30 seconds
    ));

    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    return dio;
  }

  @override
  List<Bind> get binds => [
        Bind.singleton((i) => Logger(), export: true),
        AsyncBind<SharedPreferences>(
          (i) => SharedPreferences.getInstance(),
          export: true,
        ),
        Bind.singleton((userSessionLocalDataSource) => dioInstance(),
            export: true),

      ];
}
