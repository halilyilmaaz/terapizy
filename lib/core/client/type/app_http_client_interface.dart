import 'dart:ui';
import 'package:dio/dio.dart';

abstract class IAppHttpClient {
  abstract Dio dio;

  InterceptorsWrapper createInterceptors({
    Map<String, dynamic>? additionalData,
    VoidCallback? onRequest,
    VoidCallback? onResponse,
    VoidCallback? onError,
  });
  BaseOptions createBaseOptions();
  void initialization({VoidCallback? onRequest, VoidCallback? onResponse, VoidCallback? onError, Map<String, dynamic>? additionalData});

  Future<Response> get({required String path, Map<String, dynamic>? queryParameters, Map<String, dynamic>? headers});
  Future<Response> post({required String path, Map<String, dynamic>? queryParameters, Map<String, dynamic>? body, Map<String, dynamic>? headers});
  Future<Response> put({required String path, Map<String, dynamic>? queryParameters, Map<String, dynamic>? body, Map<String, dynamic>? headers});
  Future<Response> delete({required String path, Map<String, dynamic>? queryParameters, Map<String, dynamic>? body, Map<String, dynamic>? headers});
}
