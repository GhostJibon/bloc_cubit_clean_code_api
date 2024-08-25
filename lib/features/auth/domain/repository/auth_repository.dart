

import 'package:api_bloc_cubit/core/error/error.dart';
import 'package:api_bloc_cubit/features/auth/data/model/loginUc.dart';
import 'package:api_bloc_cubit/features/auth/domain/entities/user_enteties.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository { 
  Future<Either<Failure, UserEntities>> getLogin({required LoginUc loginUc});
}
