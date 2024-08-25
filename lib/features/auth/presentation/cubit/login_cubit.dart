import 'dart:developer';
import 'package:api_bloc_cubit/config/enum/bloc_api_state.dart';
import 'package:api_bloc_cubit/features/auth/data/model/loginUc.dart';
import 'package:api_bloc_cubit/features/auth/data/model/login_models.dart';
import 'package:api_bloc_cubit/features/auth/domain/entities/auth_entities.dart';
import 'package:api_bloc_cubit/features/auth/domain/entities/user_enteties.dart';
import 'package:api_bloc_cubit/features/auth/presentation/cubit/login_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthUseCase authUseCase;

  LoginCubit({required this.authUseCase})
      : super(
          LoginState(
            apiState: NormalApiState.initial,
            userEntities: UserEntities(
                user: User(
                    id: 0,
                    type: '',
                    avatar: '',
                    firstName: '',
                    lastName: '',
                    email: '',
                    phone: '',
                    gender: '',
                    status: '',
                    shop: Shop(
                      type: "",
                      status: "",
                      slug: "",
                      name: "",
                      selectedOrderStatus: [],
                      typeId: "",
                      logo: "",
                      favicon: "",
                      customDomain: "",
                      address: "",
                      contactNumber: "",
                      certificateArn: "",
                      domainRecord: "",
                      certificateStatus: "",
                      partnerId: 0,
                      packageId: 0,
                      packagePrice: "",
                      themeId: 0,
                      metaTitle: "",
                      metaDescription: "",
                      metaKeywords: "",
                      metaLogo: "",
                      facebookPixelKey: '',
                      pixelAccessToken: "",
                      facebookPageId: "",
                      whatsappNumber: "",
                      googleAnalyticsKey: "",
                      googleTagManagerKey: "",
                      googleAdwordsKey: "",
                      packageStartDate: "",
                      packageExpiryDate: "",
                      deletedAt: "",
                      id: 0,
                      domainStatus: "",
                      shopSetup: false,
                      createdAt: DateTime.now(),
                      updatedAt: DateTime.now(),
                    ),
                    adminType: '',
                    permissions: []),
                accessToken: ''),
            errorMessage: "Please Swipe Down to Refresh",
          ),
        );
 
  Future<void> getLogins(LoginUc loginUc) async {
    emit(state.copyWith(apiState: NormalApiState.loading));
    await authUseCase.getLogin(loginUc: loginUc).then((res) {
      res.fold((err) {
        log("call err ${err.toString()}");
        return emit(state.copyWith(
            apiState: NormalApiState.failure, errorMessage: err.message));
      }, (suc) {
// AuthenticationCubit().makeAuthenticate(user: suc);

        return emit(state.copyWith(
            apiState: NormalApiState.loaded,
            userEntities: suc,
            errorMessage: ""));
      });
    }).onError((error, stackTrace) {
      log("Error cubit 2 : ${error.toString()}");
      emit(
        state.copyWith(
            apiState: NormalApiState.failure, errorMessage: error.toString()),
      );
    });
  }
}
