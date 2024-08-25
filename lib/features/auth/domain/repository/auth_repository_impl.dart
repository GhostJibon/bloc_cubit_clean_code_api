import 'package:api_bloc_cubit/core/error/error.dart';
import 'package:api_bloc_cubit/features/auth/data/auth_remote.dart';
import 'package:api_bloc_cubit/features/auth/data/model/loginUc.dart';
import 'package:api_bloc_cubit/features/auth/domain/entities/user_enteties.dart';
import 'package:api_bloc_cubit/features/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteServices authRemoteServices;

  AuthRepositoryImpl({required this.authRemoteServices});

  @override
  Future<Either<Failure, UserEntities>> getLogin(
      {required LoginUc loginUc}) async {
    return await authRemoteServices.getLogin(loginuc: loginUc);
  }




}
