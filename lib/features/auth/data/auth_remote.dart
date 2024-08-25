import 'dart:developer';

import 'package:api_bloc_cubit/core/error/error.dart';
import 'package:api_bloc_cubit/features/auth/data/api_error_generator.dart';
import 'package:api_bloc_cubit/features/auth/data/dio_client.dart';
import 'package:api_bloc_cubit/features/auth/data/model/loginUc.dart';
import 'package:api_bloc_cubit/features/auth/data/model/login_models.dart';
import 'package:api_bloc_cubit/features/auth/data/request_params.dart';
import 'package:dartz/dartz.dart';
import 'package:path/path.dart' as path;

class AuthRemoteServices {
  final DioClient _dioClient = DioClient.instance;

  Future<Either<Failure, UserModel>> getLogin(
      {required LoginUc loginuc}) async {
    final APIRequestParam param = APIRequestParam(
      path: 'https://api.storx.site/api/v1/auth/admin/login',
      data: loginuc.toJson(),
      doCache: false,
    );
    return await _dioClient.post(param).then((response) {
      return response.fold((l) {
        log("Eror Exception : ${l.response?.statusCode}");
        return Left(ApiErrorGenerator.apiError(l));
      }, (r) {
        try {
          log("success data");
          UserModel userModel = UserModel.fromJson(r.data);
          return Right(userModel);
        } on Exception catch (e) {
          return Left(InvalidFormatFailure(
            message: e.toString(),
          ));
        }
      });
    });
  }

}
