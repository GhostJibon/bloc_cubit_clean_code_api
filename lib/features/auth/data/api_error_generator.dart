import 'dart:convert';

import 'package:api_bloc_cubit/core/error/error.dart';
import 'package:dio/dio.dart';


class ApiErrorGenerator {
  ApiErrorGenerator._();
  static Failure apiError(DioException error) {
    switch (error.type) {
      case DioExceptionType.badCertificate:
        return BadCertificateFailure(message: error.message ?? "");
      case DioExceptionType.cancel:
        return CancelFailure(message: error.message ?? "");
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case 400:
            return BadRequestFailure(
                message: jsonEncode(error.response?.data['message']));
          case 401:
          case 403:
            return UnauthorizedFailure(
                message: jsonEncode(error.response?.data['message']));
          case 434:
            return UnauthorizedFailure(
                message: jsonEncode(error.response?.data['message']));
          case 404:
            return NotFoundFailure(
                message: jsonEncode(error.response?.data['message']));
          case 409:
            return NotFoundFailure(
                message: jsonEncode(error.response?.data['message']));
          case 500:
            return InternalServerFailure(
                message: jsonEncode(error.response?.data['message']));
          default:
            return UnknownFailure(
                message: jsonEncode(error.response?.data['message']));
        }
      case DioExceptionType.connectionError:
        return ConnectionFailure(message: error.message ?? "");
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return DeadlineExceededFailure(message: error.message ?? "");
      default:
        return NoInternetFailure();
    }
  }
}
