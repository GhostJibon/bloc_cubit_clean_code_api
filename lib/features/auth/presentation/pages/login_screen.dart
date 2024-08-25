import 'package:api_bloc_cubit/config/enum/bloc_api_state.dart';
import 'package:api_bloc_cubit/config/navigation/route_name.dart';
import 'package:api_bloc_cubit/features/auth/data/model/loginUc.dart';
import 'package:api_bloc_cubit/features/auth/presentation/cubit/login_cubit.dart';
import 'package:api_bloc_cubit/features/auth/presentation/cubit/login_state.dart';
import 'package:api_bloc_cubit/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController(text: "password");
  TextEditingController email =
      TextEditingController(text: "nkroyel@gmail.com");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15.w, right: 15.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              210.verticalSpace,
              InputFieldWidget(
                sufixIconview: email.text.isNotEmpty ? false : false,
                prefixIconview: email.text.isNotEmpty ? false : false,
                lable: "Email ",
                inputController: email,
                isValid: true,
                onTap: () {
                  setState(() {
                    email.text = '';
                  });
                },
                passwordVisible: false,
              ),
              20.verticalSpace,
              InputFieldWidget(
                sufixIconview: true,
                prefixIconview: password.text.isNotEmpty ? false : false,
                lable: "password",
                inputController: password,
                isValid: true,
                onTap: () {
                  setState(() {
                    //  password.text = '';
                    isPassword = !isPassword;
                  });
                },
                passwordVisible: isPassword,
              ),
              20.verticalSpace,
              BlocConsumer<LoginCubit, LoginState>(builder: (context, state) {
                if (state.apiState == NormalApiState.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff00AC97),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.read<LoginCubit>().getLogins(LoginUc(
                                email: email.text, password: password.text));
                          } else {}
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        )),
                  );
                }
              }, listener: (context, state) {
                if (state.apiState == NormalApiState.loaded) {
                  if (state.userEntities.user.shop.shopSetup == false) {
                  } else {
                    Navigator.pushNamed(context, RouteName.dashboard);
                  }
                } else if (state.apiState == NormalApiState.failure) {}
              }),
            ],
          ),
        ),
      ),
    );
  }
}
