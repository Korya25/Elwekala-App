import 'package:elwekala/core/api/end_points.dart';
import 'package:elwekala/features/auth/domain/entities/user_entity.dart';

class LoginModel {
  final String status;
  final String message;
  final LoginUserModel user;

  LoginModel({required this.status, required this.message, required this.user});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      status: json[ApiKeys.status],
      message: json[ApiKeys.message],
      user: LoginUserModel.fromJson(json[ApiKeys.user]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKeys.status: status,
      ApiKeys.message: message,
      ApiKeys.user: user.toJson(),
    };
  }
}

class LoginUserModel extends UserEntity {
  LoginUserModel({
    required super.name,
    required super.email,
    required super.phone,
    required super.nationalId,
    required super.gender,
    required super.profileImage,
    required super.token,
  });

  factory LoginUserModel.fromJson(Map<String, dynamic> json) {
    return LoginUserModel(
      name: json[ApiKeys.name],
      email: json[ApiKeys.email],
      phone: json[ApiKeys.phone],
      nationalId: json[ApiKeys.nationalId],
      gender: json[ApiKeys.gender],
      profileImage: json[ApiKeys.profileImage],
      token: json[ApiKeys.token],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKeys.name: name,
      ApiKeys.email: email,
      ApiKeys.phone: phone,
      ApiKeys.nationalId: nationalId,
      ApiKeys.gender: gender,
      ApiKeys.profileImage: profileImage,
      ApiKeys.token: token,
    };
  }
}
