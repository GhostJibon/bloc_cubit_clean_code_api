import 'dart:convert';

import 'package:dio/dio.dart';

class APIRequestParam {
  final String path;
  final dynamic data;
  final Map<String, dynamic>? queryParameters;
  final int? retry;
  final bool? hasRefreshToken;
  final Options? options;
  final bool? hasAuth;
  final bool? doCache;
  final CancelToken? cancelToken;
  final String? accessToken;
  final String? refreshToken;

  static const String contentType = "application/json";

  APIRequestParam({
    required this.path,
    this.hasRefreshToken,
    this.data,
    this.queryParameters,
    this.retry = 0,
    this.hasAuth = false,
    this.doCache = false,
    this.options,
    this.cancelToken,
    this.accessToken,
    this.refreshToken,
  }) : assert(
          !(hasAuth == null) || accessToken != null,
        );

  Map<String, dynamic> toMap() {
    return {
      "path": path,
      "data": data,
      "queryParameters": queryParameters,
      "hasAuth": hasAuth,
      "doCache": doCache,
      "options": options,
      "retry": retry,
      "hasRefreshToken": hasRefreshToken,
      'cancelToken': cancelToken,
      'accessToken': accessToken,
      'refreshToken': refreshToken,
    };
  }

  factory APIRequestParam.fromMap(Map<String, dynamic> map) {
    return APIRequestParam(
      path: map['path'] as String,
      data: map['data'],
      queryParameters: map['queryParameters'] != null
          ? Map<String, dynamic>.from(
              map['queryParameters'] as Map<String, dynamic>)
          : null,
      hasAuth: map['hasAuth'] as bool? ?? false,
      doCache: map["doCache"] as bool? ?? false,
      retry: map['retry'] as int? ?? 0,
      hasRefreshToken: map["hasRefreshToken"] as bool? ?? false,
      options: Options(
        followRedirects: false,
        contentType: contentType,
      ),
      cancelToken: map['cancelToken'] as CancelToken?,
      accessToken: map['accessToken'] as String?,
      refreshToken: map['refreshToken'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory APIRequestParam.fromJson(String source) =>
      APIRequestParam.fromMap(json.decode(source) as Map<String, dynamic>);

  APIRequestParam copyWith({
    String? path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    bool? doCache,
    bool? hasCache,
    int? retry,
    bool? hasAuth,
    bool? hasRefreshToken,
    CancelToken? cancelToken,
    String? accessToken,
    String? refreshToken,
  }) {
    return APIRequestParam(
      path: path ?? this.path,
      data: data ?? this.data,
      queryParameters: queryParameters ?? this.queryParameters,
      options: options ?? this.options,
      doCache: doCache ?? this.doCache,
      hasAuth: hasAuth ?? this.hasAuth,
      retry: retry ?? this.retry,
      hasRefreshToken: hasRefreshToken ?? this.hasRefreshToken,
      cancelToken: cancelToken ?? this.cancelToken,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }
}
