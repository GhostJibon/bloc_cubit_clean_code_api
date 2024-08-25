import 'package:api_bloc_cubit/config/const/dependency_injector.dart';
import 'package:api_bloc_cubit/features/auth/presentation/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';



class StateManagementProviders {
  static List<SingleChildWidget> providers = [
    BlocProvider(create: (context) => sl<LoginCubit>()),
    
  ];
}
