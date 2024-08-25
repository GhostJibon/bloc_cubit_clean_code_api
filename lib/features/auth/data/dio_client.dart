import 'package:api_bloc_cubit/features/auth/data/api_endpoints.dart';
import 'package:api_bloc_cubit/features/auth/data/api_provider.dart';
import 'package:api_bloc_cubit/features/auth/data/request_params.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class DioClient implements ApiProvider {
  static DioClient? _instance;
  // Avoid self instance
  DioClient._();
  static DioClient get instance {
    _instance ??= DioClient._();
    return _instance!;
  }

  CancelToken cancelToken = CancelToken();

  Dio _createDio(APIRequestParam param) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl, // Replace with your base URL
        connectTimeout: const Duration(milliseconds: 100000),
        receiveTimeout: const Duration(milliseconds: 50000),
        followRedirects: false,

        contentType: "application/json",
      ),
    );

    // dio.interceptors.add(DioInterceptor(dio));
    dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
      error: true,
      // logPrint: (object) => log("$object "),
    ));

    return dio;
  }

  @override
  Future<Either<DioException, Response>> delete(APIRequestParam param) async {
    return await Task(() async => await _createDio(param).delete(param.path,
        queryParameters: param.queryParameters,
        options: param.options)).attempt().run().then((either) {
      return either.fold((l) {
        return Left(l as DioException);
      }, (r) {
        return Right(r);
      });
    });
  }

  @override
  Future<Either<DioException, Response>> get(APIRequestParam param) async {
    return await Task(() async => await _createDio(param).get(param.path,
        queryParameters: param.queryParameters,
        options: param.options)).attempt().run().then((either) {
      return either.fold((l) {
        return Left(l as DioException);
      }, (r) {
        return Right(r);
      });
    });
  }

  @override
  Future<Either<DioException, Response>> patch(APIRequestParam param) async {
    return await Task(() async => await _createDio(param).patch(param.path,
        data: param.data,
        queryParameters: param.queryParameters,
        options: param.options)).attempt().run().then((either) {
      return either.fold((l) {
        return Left(l as DioException);
      }, (r) {
        return Right(r);
      });
    });
  }

  @override
  Future<Either<DioException, Response>> post(APIRequestParam param) async {
    return await Task(() async => await _createDio(param).post(param.path,
        data: param.data,
        queryParameters: param.queryParameters,
        options: param.options)).attempt().run().then((either) {
      return either.fold((l) {
        return Left(l as DioException);
      }, (r) {
        return Right(r);
      });
    });
  }

  @override
  Future<Either<DioException, Response>> put(APIRequestParam param) async {
    return await Task(() async => await _createDio(param).put(param.path,
        queryParameters: param.queryParameters,
        options: param.options)).attempt().run().then((either) {
      return either.fold((l) {
        return Left(l as DioException);
      }, (r) {
        return Right(r);
      });
    });
  }

  @override
  Future<Either<DioException, Response>> download(APIRequestParam param) {
    throw UnimplementedError();
  }
}
