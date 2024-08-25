// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

import 'package:api_bloc_cubit/features/auth/domain/entities/user_enteties.dart';


UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

// ignore: must_be_immutable
class UserModel extends UserEntities {
  User user;
  String accessToken;

  UserModel({
    required this.user,
    required this.accessToken,
  }) : super(user: user, accessToken: accessToken);

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        user: User.fromJson(json["user"]),
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "access_token": accessToken,
      };
}

class User {
  int id;
  String type;
  String avatar;
  String firstName;
  String lastName;
  String email;
  String phone;
  String gender;
  String status;
  Shop shop;
  String adminType;
  List<String> permissions;

  User({
    required this.id,
    required this.type,
    required this.avatar,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.gender,
    required this.status,
    required this.shop,
    required this.adminType,
    required this.permissions,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] ?? 0,
        type: json["type"] ?? "",
        avatar: json["avatar"] ?? "",
        firstName: json["firstName"] ?? "",
        lastName: json["lastName"] ?? "",
        email: json["email"] ?? "",
        phone: json["phone"] ?? "",
        gender: json["gender"] ?? "",
        status: json["status"] ?? "",
        shop: Shop.fromJson(json["shop"]),
        adminType: json["adminType"] ?? "",
        permissions: List<String>.from(json["permissions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "avatar": avatar,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "gender": gender,
        "status": status,
        "shop": shop.toJson(),
        "adminType": adminType,
        "permissions": List<dynamic>.from(permissions.map((x) => x)),
      };
}

class Shop {
  int id;
  String type;
  String typeId;
  String logo;
  String favicon;
  String name;
  String slug;
  String customDomain;
  String address;
  String contactNumber;
  String status;
  String domainStatus;
  String certificateArn;
  String domainRecord;
  String certificateStatus;
  bool shopSetup;
  int partnerId;
  int packageId;
  String packagePrice;
  List selectedOrderStatus;
  int themeId;
  String metaTitle;
  String metaDescription;
  String metaKeywords;
  String metaLogo;
  String facebookPixelKey;
  String pixelAccessToken;
  String facebookPageId;
  String whatsappNumber;
  String googleAnalyticsKey;
  String googleTagManagerKey;
  String googleAdwordsKey;
  String packageStartDate;
  String packageExpiryDate;
  DateTime createdAt;
  DateTime updatedAt;
  String deletedAt;

  Shop({
    required this.id,
    required this.type,
    required this.typeId,
    required this.logo,
    required this.favicon,
    required this.name,
    required this.slug,
    required this.customDomain,
    required this.address,
    required this.contactNumber,
    required this.status,
    required this.domainStatus,
    required this.certificateArn,
    required this.domainRecord,
    required this.certificateStatus,
    required this.shopSetup,
    required this.partnerId,
    required this.packageId,
    required this.packagePrice,
    required this.selectedOrderStatus,
    required this.themeId,
    required this.metaTitle,
    required this.metaDescription,
    required this.metaKeywords,
    required this.metaLogo,
    required this.facebookPixelKey,
    required this.pixelAccessToken,
    required this.facebookPageId,
    required this.whatsappNumber,
    required this.googleAnalyticsKey,
    required this.googleTagManagerKey,
    required this.googleAdwordsKey,
    required this.packageStartDate,
    required this.packageExpiryDate,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        id: json["id"] ?? 0,
        type: json["type"] ?? "",
        typeId: json["typeId"] ?? "",
        logo: json["logo"] ?? "",
        favicon: json["favicon"] ?? "",
        name: json["name"] ?? "",
        slug: json["slug"] ?? "",
        customDomain: json["custom_domain"] ?? "",
        address: json["address"] ?? "",
        contactNumber: json["contact_number"] ?? "",
        status: json["status"] ?? "",
        domainStatus: json["domainStatus"] ?? "",
        certificateArn: json["certificateArn"] ?? "",
        domainRecord: json["domainRecord"] ?? "",
        certificateStatus: json["certificateStatus"] ?? "",
        shopSetup: json["shopSetup"] ?? false,
        partnerId: json["partner_id"] ?? 0,
        packageId: json["package_id"] ?? 0,
        packagePrice: json["package_price"] ?? "",
        selectedOrderStatus: json["selected_order_status"] ?? [],
        themeId: json["theme_id"] ?? 0,
        metaTitle: json["metaTitle"] ?? "",
        metaDescription: json["metaDescription"] ?? "",
        metaKeywords: json["metaKeywords"] ?? "",
        metaLogo: json["metaLogo"] ?? "",
        facebookPixelKey: json["facebookPixelKey"] ?? "",
        pixelAccessToken: json["pixelAccessToken"] ?? "",
        facebookPageId: json["facebookPageId"] ?? "",
        whatsappNumber: json["whatsappNumber"] ?? "",
        googleAnalyticsKey: json["googleAnalyticsKey"] ?? "",
        googleTagManagerKey: json["googleTagManagerKey"] ?? "",
        googleAdwordsKey: json["googleAdwordsKey"] ?? "",
        packageStartDate: json["package_start_date"] ?? "",
        packageExpiryDate: json["package_expiry_date"] ?? "",
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        deletedAt: json["deletedAt"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "typeId": typeId,
        "logo": logo,
        "favicon": favicon,
        "name": name,
        "slug": slug,
        "custom_domain": customDomain,
        "address": address,
        "contact_number": contactNumber,
        "status": status,
        "domainStatus": domainStatus,
        "certificateArn": certificateArn,
        "domainRecord": domainRecord,
        "certificateStatus": certificateStatus,
        "shopSetup": shopSetup,
        "partner_id": partnerId,
        "package_id": packageId,
        "package_price": packagePrice,
        "selected_order_status": selectedOrderStatus,
        "theme_id": themeId,
        "metaTitle": metaTitle,
        "metaDescription": metaDescription,
        "metaKeywords": metaKeywords,
        "metaLogo": metaLogo,
        "facebookPixelKey": facebookPixelKey,
        "pixelAccessToken": pixelAccessToken,
        "facebookPageId": facebookPageId,
        "whatsappNumber": whatsappNumber,
        "googleAnalyticsKey": googleAnalyticsKey,
        "googleTagManagerKey": googleTagManagerKey,
        "googleAdwordsKey": googleAdwordsKey,
        "package_start_date": packageStartDate,
        "package_expiry_date": packageExpiryDate,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "deletedAt": deletedAt,
      };
}
