import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'dart:developer' show log;

@lazySingleton
class ClientInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    log(options.path, name: 'Client Interceptor');
    super.onRequest(options, handler);
  }
}

@lazySingleton
class GameApi {
  final Dio _dio;

  final ClientInterceptor _interceptor;

  GameApi(this._dio, this._interceptor);

  Dio get client {
    _dio.interceptors.add(_interceptor);
    return _dio;
  }
}
