import 'dart:convert';

import 'package:api_bloc_cubit/features/auth/data/model/login_models.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class UserEntities extends Equatable {
  User user;
  String accessToken;

   UserEntities({
    required this.user,
    required this.accessToken,
  
  });
  Map<String, dynamic> toMap() {
    return {
      'user': user.toJson(),
      'accessToken': accessToken,
   
    };
  }

    factory UserEntities.initial() {
    return UserEntities(
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
                accessToken: '');
  }
  @override
  String toString() {
    return 'TodoEntities{packageList: , ,}';
  }
  factory UserEntities.fromMap(Map<String, dynamic> map) {
    return UserEntities(
     user: map['user'],
      accessToken: map['accessToken'],
    );
  }


  factory UserEntities.fromJson(String source) =>
      UserEntities.fromMap(json.decode(source));

  UserEntities copyWith({
   User? user,
   String ?accessToken,
  }) {
    return UserEntities(
     user: user?? this.user,
     accessToken: accessToken??this.accessToken
    );
  }
  @override
  List<Object?> get props => [];
}
