// To parse this JSON data, do
//
//     final loginUc = loginUcFromJson(jsonString);

import 'dart:convert';

LoginUc loginUcFromJson(String str) => LoginUc.fromJson(json.decode(str));

String loginUcToJson(LoginUc data) => json.encode(data.toJson());

class LoginUc { 
  String email;
  String password;

  LoginUc({
    required this.email,
    required this.password,
  });

  factory LoginUc.fromJson(Map<String, dynamic> json) => LoginUc(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
