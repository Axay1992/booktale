// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

AuthModel? authModelFromJson(String str) =>
    AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel? data) => json.encode(data!.toJson());
// UserInfo from stored json...
AuthModel? userInfoFromStoredJson(String str) => str.isEmpty
    ? null
    : AuthModel.fromJson(
        json.decode(str),
      );

class AuthModel {
  AuthModel({
    this.statusCode,
    this.title,
    this.message,
    this.data,
  });

  String? statusCode;
  String? title;
  String? message;
  LoginModel? data;

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        statusCode: json["statusCode"],
        title: json["title"],
        message: json["message"],
        data: LoginModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "title": title,
        "message": message,
        "data": data!.toJson(),
      };
}

class LoginModel {
  LoginModel({
    this.token,
    this.userId,
    this.mobile,
    this.fullName,
    this.email,
    this.role,
  });

  String? token;
  String? userId;
  String? mobile;
  String? fullName;
  String? email;
  Role? role;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        token: json["token"],
        userId: json["userId"],
        mobile: json["mobile"],
        fullName: json["fullName"],
        email: json["email"],
        role: Role.fromJson(json["role"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "userId": userId,
        "mobile": mobile,
        "fullName": fullName,
        "email": email,
        "role": role!.toJson(),
      };
}

class Role {
  Role({
    this.roleId,
    this.roleName,
  });

  String? roleId;
  String? roleName;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        roleId: json["roleId"],
        roleName: json["roleName"],
      );

  Map<String, dynamic> toJson() => {
        "roleId": roleId,
        "roleName": roleName,
      };
}
