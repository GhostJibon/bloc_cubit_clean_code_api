import 'package:api_bloc_cubit/features/auth/data/request_params.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ApiProvider {
  Future<Either<DioException, Response>> get(APIRequestParam param);
  Future<Either<DioException, Response>> post(APIRequestParam param);
  Future<Either<DioException, Response>> put(APIRequestParam param);
  Future<Either<DioException, Response>> patch(APIRequestParam param);
  Future<Either<DioException, Response>> delete(APIRequestParam param);
  Future<Either<DioException, Response>> download(APIRequestParam param);
}
