

import 'package:api_bloc_cubit/core/error/error.dart';
import 'package:api_bloc_cubit/features/auth/data/model/loginUc.dart';
import 'package:api_bloc_cubit/features/auth/domain/entities/user_enteties.dart';
import 'package:api_bloc_cubit/features/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
 
class AuthUseCase {
  final AuthRepository authRepository;

  AuthUseCase({required this.authRepository});

  Future<Either<Failure, UserEntities>> getLogin(
      {required LoginUc loginUc}) async {
    return await authRepository.getLogin(loginUc: loginUc);
  }
}
