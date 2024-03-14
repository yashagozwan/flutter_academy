import 'package:dio/dio.dart';
import 'package:flutter_session_4/util/logger.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClientInterceptor extends Interceptor {
  final Logger _logger;

  ClientInterceptor(this._logger);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    _logger.d(options.data);
    _logger.d(options.path);
    super.onRequest(options, handler);
  }
}

@lazySingleton
class GameClient {
  final Dio _dio;

  final ClientInterceptor _interceptor;

  GameClient(this._dio, this._interceptor);

  Dio get client {
    _dio.interceptors.add(_interceptor);
    return _dio;
  }
}
