import 'package:api_bloc_cubit/features/auth/data/auth_remote.dart';
import 'package:api_bloc_cubit/features/auth/domain/entities/auth_entities.dart';
import 'package:api_bloc_cubit/features/auth/domain/repository/auth_repository.dart';
import 'package:api_bloc_cubit/features/auth/domain/repository/auth_repository_impl.dart';
import 'package:api_bloc_cubit/features/auth/presentation/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> configureDependencies() async {
  await _auth();
}


Future<void> _auth() async {
    sl.registerFactory<LoginCubit>(() => LoginCubit(authUseCase: sl()));
    sl.registerLazySingleton(() => AuthUseCase(authRepository: sl()));
    sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(authRemoteServices: sl()));
    sl.registerLazySingleton(() => AuthRemoteServices());
}
