import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RestClientService {
  late Dio _client;

  RestClientService({
    required Dio client,
    required String baseUrl,
  }) {
    _client = client;

    _client.options = BaseOptions(
      baseUrl: baseUrl,
    );

    _client.interceptors.addAll([
      PrettyDioLogger(
        requestBody: true,
        responseBody: true,
        logPrint: (object) => log(object.toString()),
      ),
    ]);
  }

  Future<Response> get(String url, {Map<String, dynamic>? params}) => _client.get(url, queryParameters: params);

  Future<Response> post(String url, {dynamic body, dynamic parameters}) =>
      _client.post(url, data: body, queryParameters: parameters);

  Future<Response> put(String url, {dynamic body}) => _client.put(url, data: body);

  Future<Response> delete(String url, {dynamic body}) => _client.delete(url, data: body);
}
